#import "Basic";
#import "SDL";
#import "Math";
wgpu :: #import,file "../../wgpu/module.jai"; // in normal project with modules folder you would just use `#import "wgpu"`

#load "helpers.jai";

WINDOW_WIDTH  :: 1280;
WINDOW_HEIGHT :: 720;

wgpu_log_callback :: (level: wgpu.LogLevel, msg: *u8, userdata: *void) #c_call {
    print_c("[WGPU :: %]: %\n", level, to_string(msg));
}

Vertex :: struct {
    position: Vector3;
    color: Vector3;
}

SHADER :: #string WGSL
    struct VertexInput {
        @location(0) position: vec3<f32>,
        @location(1) color: vec3<f32>,
    };

    struct VertexOutput {
        @builtin(position) clip_position: vec4<f32>,
        @location(0) color: vec3<f32>,
    };

    @vertex
    fn vertex(model: VertexInput) -> VertexOutput {
        var out: VertexOutput;
        out.clip_position = vec4<f32>(model.position, 1.0);
        out.color = model.color;
        return out;
    }

    @fragment
    fn fragment(in: VertexOutput) -> @location(0) vec4<f32> {
        return vec4<f32>(in.color, 1.0);
    }
WGSL;

VERTICES :: Vertex.[
    .{ position=.{0.0, 0.5, 0.0}, color=.{1.0, 0.0, 0.0} },
    .{ position=.{-0.5, -0.5, 0.0}, color=.{0.0, 1.0, 0.0} },
    .{ position=.{0.5, -0.5, 0.0}, color=.{0.0, 0.0, 1.0} },
];

main :: () {
    SDL_Init(SDL_INIT_VIDEO);

    window := SDL_CreateWindow("Jai WebGPU Hello Triangle", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);
    assert(window != null, "Could not create window: %\n", to_string(SDL_GetError()));

    wgpu.SetLogCallback(wgpu_log_callback, null);
	wgpu.SetLogLevel(.Error);

    instance_desc: wgpu.InstanceDescriptor;
    instance := wgpu.CreateInstance(*instance_desc);
    assert(instance != null, "Instance is not created correctly");

    surface := create_surface(instance, window);
    assert(surface != null, "Surface is not created correctly");

    adapter := request_adapter(instance, surface, powerPreference = .HighPerformance);
    assert(adapter != null, "Adapter is not created correctly");

    device := request_device(adapter);
    assert(device != null, "Device is not created correctly");

    queue := wgpu.DeviceGetQueue(device);
    assert(queue != null, "Queue is not created correctly");

    shader := create_shader(device, SHADER);
    assert(shader != null, "Shader is not created correctly");

    vertex_buffer, vertex_buffer_size := vertex_array_to_buffer(device, queue, VERTICES);

    pipeline := create_pipeline(surface, adapter, device, shader, Vertex);
    assert(pipeline != null, "Pipeline is not created correctly");

    configure_surface(surface, adapter, device, WINDOW_WIDTH, WINDOW_HEIGHT);

    wgpu.QueueSubmit(queue, 0, null);

    exit := false;
    while !exit {
        event: SDL_Event;
        while SDL_PollEvent(*event) {
            if event.type == SDL_QUIT {
                exit = true;
            }
        }

        surface_texture: wgpu.SurfaceTexture;
        wgpu.SurfaceGetCurrentTexture(surface, *surface_texture);
        display_view := wgpu.TextureCreateView(surface_texture.texture, null);

		cmd_encoder := wgpu.DeviceCreateCommandEncoder(
			device,
			*(wgpu.CommandEncoderDescriptor.{label = "Main Command Encoder"}),
		);

        colorAttachment := wgpu.RenderPassColorAttachment.{
                loadOp = wgpu.LoadOp.Clear,
                storeOp = wgpu.StoreOp.Store,
                clearValue = wgpu.Color.{0.0, 0.0, 0.0, 1.0},
        };

        colorAttachment.view = display_view;

        render_pass_descriptor := wgpu.RenderPassDescriptor.{ label = "Main Render Pass" };
        render_pass_descriptor.colorAttachmentCount = 1;
        render_pass_descriptor.colorAttachments = *colorAttachment;

		render_pass := wgpu.CommandEncoderBeginRenderPass(cmd_encoder, *render_pass_descriptor);

        wgpu.RenderPassEncoderSetPipeline(render_pass, pipeline);
        wgpu.RenderPassEncoderSetVertexBuffer(render_pass, 0, vertex_buffer, 0, vertex_buffer_size);

        wgpu.RenderPassEncoderDraw(render_pass, VERTICES.count, 1, 0, 0);
		wgpu.RenderPassEncoderEnd(render_pass);
        wgpu.TextureViewRelease(display_view);

		cmd_buffer := wgpu.CommandEncoderFinish(cmd_encoder, *(wgpu.CommandBufferDescriptor.{label = "Main Command Buffer"}));

		wgpu.QueueSubmit(queue, 1, *cmd_buffer);

        wgpu.SurfacePresent(surface);
    }

    // Close and destroy the window
    SDL_DestroyWindow(window);

    // Clean up
    SDL_Quit();
}

// Build
#run {
    #import "Compiler";
    #import "File";

	make_directory_if_it_does_not_exist("./bin/");

    set_build_options_dc(.{
        output_executable_name = "hello_triangle",
		output_path = "./bin/"
	});
}