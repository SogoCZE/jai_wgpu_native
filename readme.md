# WGPU Native bindings for Jai

Bindings for [wgpu-native](https://github.com/gfx-rs/wgpu-native) for Jai. You can use prebuild and pregenerated bindings or compile and generate bindings yourself.

## Use prebuilt and pregenerated bindings
To use simply create local `modules` folder in your `Jai` project and copy here the `wgpu` folder. Then import wgpu and use it. You can look at the [hello_triangle](/examples/hello-tringle) example.

## Build and generate yourself
You need to have installed [Rust](https://www.rust-lang.org) (to be able compile wgpu-native).

## TODO
- iOS
- Android
- Properly test Linux
- idiomatic wrapper around raw bindings