#load "wgpu_native.jai";

#scope_module

// @TODO: Linux, iOS

#if OS == .MACOS {
    libwgpu_native :: #library "macos/libwgpu_native";
} else #if OS == .WINDOWS {
    // This is weird...
    userenv :: #system_library,link_always "userenv";
    ws2_32 :: #system_library,link_always "ws2_32";
    d3dcompiler :: #system_library,link_always "d3dcompiler";
    D3D12 :: #system_library,link_always "D3D12";
    DXGI :: #system_library,link_always "DXGI";
    Dwmapi :: #system_library,link_always "Dwmapi";
    Bcrypt :: #system_library,link_always "bcrypt";
    Wingdi :: #system_library,link_always "Gdi32";
    OpenGL32 :: #system_library,link_always "Opengl32";
    User32 :: #system_library,link_always "User32";
    ntdll :: #system_library,link_always "ntdll";

    libwgpu_native :: #library "windows/libwgpu_native";
} else #if OS == .LINUX {
    libwgpu_native :: #library "linux/libwgpu_native";
}

