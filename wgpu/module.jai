#load "wgpu_native.jai";

#scope_module

// @TODO: Linux, iOS

#if OS == .MACOS {
    libwgpu_native :: #library "macos/libwgpu_native";
} else #if OS == .WINDOWS {
    libwgpu_native :: #library "windows/libwgpu_native";
} else #if OS == .LINUX {
    libwgpu_native :: #library "linux/libwgpu_native";
}

