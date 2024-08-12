print_c :: (format: string, args: ..Any, to_standard_error := false) #expand {
    new_context: Context;
    push_context new_context {
        print(format, ..args, to_standard_error);
    }
} @PrintLike

request_adapter :: (instance: wgpu.Instance, surface: wgpu.Surface, powerPreference: wgpu.PowerPreference, forceFallbackAdapter := false) -> wgpu.Adapter {
    adapter: wgpu.Adapter;

    request_adapter_options := wgpu.RequestAdapterOptions.{
        compatibleSurface = surface,
        powerPreference = powerPreference,
        forceFallbackAdapter = forceFallbackAdapter,
    };

    wgpu.InstanceRequestAdapter(instance, *request_adapter_options, (status: wgpu.RequestAdapterStatus, adapter: wgpu.Adapter, message: *u8, user_data: *void) #c_call {
        if status != .Success {
            print_c("%\n", message);
            return;
        };

        << cast(*wgpu.Adapter) user_data = adapter;
    }, *adapter);

    return adapter;
}

create_surface :: (instance: wgpu.Instance, window: *SDL_Window, label := "Main Surface") -> wgpu.Surface {
    surface_desc: wgpu.SurfaceDescriptor;
    surface_desc.label = to_c_string(label);

    #if OS == .WINDOWS {
        sdl_info: SDL_SysWMinfo;
        assert(xx SDL_GetWindowWMInfo(window,  *sdl_info), "Cannot get SDL info!\n");

        surface_desc_from_windows_hwnd: wgpu.SurfaceDescriptorFromWindowsHWND;
        surface_desc_from_windows_hwnd.chain.sType = .SurfaceDescriptorFromWindowsHWND;
        surface_desc_from_windows_hwnd.hwnd = sdl_info.info.win.window;

        surface_desc.nextInChain = xx *surface_desc_from_windows_hwnd;
    }

    #if OS == .MACOS {
        metal_view := SDL_Metal_CreateView(window);
        metal_layer := SDL_Metal_GetLayer(metal_view);

        surface_desc_from_metal_layer: wgpu.SurfaceDescriptorFromMetalLayer;
        surface_desc_from_metal_layer.layer = metal_layer;
        surface_desc_from_metal_layer.chain.sType = .SurfaceDescriptorFromMetalLayer;

        surface_desc.nextInChain = xx *surface_desc_from_metal_layer;
    }

    #if OS == .LINUX  #assert false "LINUX IS NOT SUPPORTED RIGHT NOW.";

    surface := wgpu.InstanceCreateSurface(instance, *surface_desc);

    return surface;
}

request_device :: (adapter: wgpu.Adapter) -> wgpu.Device {
    device_descriptor: wgpu.DeviceDescriptor;
    device: wgpu.Device;

    wgpu.AdapterRequestDevice(adapter, *device_descriptor, (status: wgpu.RequestDeviceStatus, device: wgpu.Device, message: *u8, user_data: *void) #c_call {
        if status != .Success {
            print_c("Status: %, Device: %, Message: %", status, device, to_string(message));
            return;
        }

        (cast(*wgpu.Device) user_data).* = device;
    }, *device);
    assert(device != null, "GPU Device is not created correctly");

    return device;
}

create_shader :: (device: wgpu.Device, source: string, label := "Main shader") -> wgpu.ShaderModule {
    wgslDescriptor: wgpu.ShaderModuleWGSLDescriptor;
    wgslDescriptor.chain.next = null;
    wgslDescriptor.chain.sType=.ShaderModuleWGSLDescriptor;
    wgslDescriptor.code = to_c_string(source);

    shaderModuleDescriptor: wgpu.ShaderModuleDescriptor;
    shaderModuleDescriptor.label = to_c_string(label);
    shaderModuleDescriptor.nextInChain = xx *wgslDescriptor;

    return wgpu.DeviceCreateShaderModule(device, *shaderModuleDescriptor);
}

make_vertex_layout :: ($type: Type) -> wgpu.VertexBufferLayout {
    info := type_info(type);

    vertex_buffer_layout := wgpu.VertexBufferLayout.{
        arrayStride=size_of(type),
        stepMode=.Vertex,
    };

    vertex_attributes := NewArray(info.members.count, wgpu.VertexAttribute);

    for info.members {
        vertex_attribute: wgpu.VertexAttribute;

        if it.type.type == {
            case .BOOL;
                vertex_attribute.format = .Sint32;

            case .INTEGER;
                int_type_info := cast(*Type_Info_Integer) it.type;

                if int_type_info.signed {
                    vertex_attribute.format = .Sint32;
                } else {
                    vertex_attribute.format = .Uint32;
                }

            case .FLOAT;
                assert(it.type.runtime_size <= 4, "Only float32 is supported in Vertex Attribute Data.");
                vertex_attribute.format = .Float32;

            case .STRUCT;
                struct_type_info := cast(*Type_Info_Struct) it.type;

                if struct_type_info.name == {
                    case "Vector4";
                        vertex_attribute.format = .Float32x4;
                    case "Vector3";
                        vertex_attribute.format = .Float32x3;
                    case "Vector2";
                        vertex_attribute.format = .Float32x2;
                    case;
                        assert(false, "Unsupported struct type. Only Vector2, Vector3, Vector4 are supported");
                }

        }

        vertex_attribute.offset= xx it.offset_in_bytes;
        vertex_attribute.shaderLocation= xx it_index;

        vertex_attributes[it_index] = vertex_attribute;
    }

    vertex_buffer_layout.attributeCount = xx vertex_attributes.count;
    vertex_buffer_layout.attributes = vertex_attributes.data;

    return vertex_buffer_layout;
}

create_pipeline :: (surface: wgpu.Surface, adapter: wgpu.Adapter, device: wgpu.Device, shader: wgpu.ShaderModule, $vertex_buffer_layout_type: Type) -> wgpu.RenderPipeline {
    surface_capabilities: wgpu.SurfaceCapabilities;
    wgpu.SurfaceGetCapabilities(surface, adapter, *surface_capabilities);

    preferred_texture_format := surface_capabilities.formats[0];

    pipeline_descriptor: wgpu.RenderPipelineDescriptor;
    pipeline_descriptor.label = "Render Pipeline";

    pipeline_layout_descriptor: wgpu.PipelineLayoutDescriptor;

    pipeline_descriptor.layout = wgpu.DeviceCreatePipelineLayout(device, *pipeline_layout_descriptor);

    vertex_state: wgpu.VertexState;
    vertex_state.module = shader;
    vertex_state.entryPoint = "vertex";
    vertex_state.bufferCount = 1;
    vertex_state.buffers = *make_vertex_layout(vertex_buffer_layout_type);

    pipeline_descriptor.vertex = vertex_state;

    pipeline_descriptor.primitive = .{
        topology=.TriangleList,
        stripIndexFormat=.Undefined,
        frontFace=.CCW,
        cullMode=.None,
    };

    pipeline_descriptor.multisample = .{
        count = 1,
        mask = 1,
        alphaToCoverageEnabled = false,
    };

    color_target_state: wgpu.ColorTargetState;
    color_target_state.format = preferred_texture_format;
    color_target_state.blend = *(wgpu.BlendState.{
        color = .{ srcFactor = .One, dstFactor = .Zero, operation = .Add },
        alpha = .{ srcFactor = .One, dstFactor = .Zero, operation = .Add },
    });
    color_target_state.writeMask = xx wgpu.ColorWriteMask.All;

    fragment_state: wgpu.FragmentState;
    fragment_state.module = shader;
    fragment_state.entryPoint = "fragment";
    fragment_state.targetCount = 1;
    fragment_state.targets = *color_target_state;

    pipeline_descriptor.fragment = *fragment_state;

    pipeline_descriptor.depthStencil = null;

    return wgpu.DeviceCreateRenderPipeline(device, *pipeline_descriptor);
}

configure_surface :: (surface: wgpu.Surface, adapter: wgpu.Adapter, device: wgpu.Device, width: int, height: int) {
    surface_capabilities: wgpu.SurfaceCapabilities;
    wgpu.SurfaceGetCapabilities(surface, adapter, *surface_capabilities);

    surface_config := wgpu.SurfaceConfiguration.{
        device=device,
        usage=xx wgpu.TextureUsage.RenderAttachment,
        format=surface_capabilities.formats[0],
        width=xx width,
        height=xx height,
        presentMode=.Fifo
    };
    wgpu.SurfaceConfigure(surface, *surface_config);
}

vertex_array_to_buffer :: (device: wgpu.Device, queue: wgpu.Queue, vertices: []Vertex) -> wgpu.Buffer, u64 {
    size := cast(u64) vertices.count * size_of(Vertex);

    buffer := wgpu.DeviceCreateBuffer(device, *(wgpu.BufferDescriptor.{
        usage = xx (wgpu.BufferUsage.Vertex | wgpu.BufferUsage.CopyDst),
        size=size
    }));
    assert(buffer != null, "Buffer is not created correctly");

    wgpu.QueueWriteBuffer(queue, buffer, 0, vertices.data, size);

    return buffer, size;
}