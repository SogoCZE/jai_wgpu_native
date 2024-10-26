#import "Basic";
#import "Compiler";
#import "Process";
#import "Bindings_Generator";
#import "File";
#import "File_Utilities";
#import "String";

LINUX_BUILD_TARGET :: "x86_64-unknown-linux-gnu";
WINDOWS_BUILD_TARGET :: "x86_64-pc-windows-msvc";
MACOS_X64_BUILD_TARGET :: "x86_64-apple-darwin";
MACOS_ARM64_BUILD_TARGET :: "aarch64-apple-darwin";
IOS_BUILD_TARGET :: "aarch64-apple-ios";
IOS_SIMULATOR_BUILD_TARGET :: "aarch64-apple-ios-sim";
ANDROID_BUILD_TARGET :: "";

#run {
    if #exists(JAILS_DIAGNOSTICS_BUILD) return;

    options := get_build_options();
    args := options.compile_time_command_line;

    release := !array_find(args, "-debug");

    set_build_options_dc(.{ do_output=false });

    // clone submodules
    log("Initing wgpu-native Git Submodule...");
    _, ok := run_cmd(.["git", "submodule", "update", "--init", "--recursive"], "../");
    if !ok {
        log_error("Failed to init Git Submodule with wgpu-native source. Make sure you got Git installed and in your path.");
        exit(1);
    }

    // check if we have Rust and Cargo installed (needed to build wgpu_native)
    result, ok= := run_cmd(.["cargo", "version"], "./");
    if !ok {
        log_error("Make sure you got Rust and Cargo installed and available in path.");
        exit(1);
    }

    if !file_exists("./wgpu-native") {
        log_error("Can't find wpgu-native folder.");
        exit(1);
    }

    // Build libraries and generate bindings
    if OS == {
        case .MACOS;
            build(.MACOS, release);
            // build(.IOS, release);

            // lipo result in fat library and copy it
            make_directory_if_it_does_not_exist("./macos");

            result, ok := run_cmd(.["lipo", "-create", get_builded_lib_path(.MACOS, MACOS_X64_BUILD_TARGET, release), get_builded_lib_path(.MACOS, MACOS_ARM64_BUILD_TARGET, release), "-output", "./macos/libwgpu_native.dylib"], "./");
            if !ok {
                log_error("Failed to create fat library for macos.");
                log_error(result);
                exit(1);
            }

            generate();

        case .WINDOWS;
            build(.WINDOWS, release);

            make_directory_if_it_does_not_exist("./windows");
            if !copy_file(get_builded_lib_path(.WINDOWS, WINDOWS_BUILD_TARGET, release), "./windows/libwgpu_native.dll") {
                log_error("Failed to copy library.");
                exit(1);
            }

            if !copy_file(get_builded_lib_path(.WINDOWS, WINDOWS_BUILD_TARGET, release, "lib"), "./windows/libwgpu_native.lib") {
                log_error("Failed to copy library.");
                exit(1);
            }

            generate();
        case .LINUX;
            build(.LINUX, release);

            make_directory_if_it_does_not_exist("./linux");
            if !copy_file(get_builded_lib_path(.LINUX, LINUX_BUILD_TARGET, release), "./linux/libwgpu_native.so") {
                log_error("Failed to copy library.");
                exit(1);
            }

            generate();
    }

    // Copy libraries to correct folders

}

run_cmd :: (command: [] string, working_directory: string, print_live := false) -> string, bool #must {
    result, output_string, error_string := run_command(..command, working_directory = working_directory, capture_and_return_output = true, print_captured_output = print_live);
    if result.exit_code != 0 {
        return error_string, false;
    }

    return output_string, true;
}

get_builded_lib_path :: (platform: Operating_System_Tag, target: string, release: bool, custom_extension := "") -> string {
    extension: string;
    name: string;
    if platform == .MACOS || platform == .IOS {
        name = "libwgpu_native";
        extension = "dylib";
    }

    if platform == .WINDOWS {
        name = "wgpu_native";
        extension = "dll";
    }

    if platform == .LINUX || platform == .ANDROID {
        name = "libwgpu_native";
        extension = "so";
    }

    return sprint("./wgpu-native/target/%/%/%.%", target, ifx release then "release" else "debug", name, ifx custom_extension.count > 0 then custom_extension else extension);
}

build :: (platform: Operating_System_Tag, release: bool) -> bool {
    log("Compiling wgpu-native for % (%)", platform, ifx release then "release" else "debug");

    targets: [..]string;

    if platform == {

        case .MACOS;
            array_add(*targets, MACOS_X64_BUILD_TARGET);
            _, ok := run_cmd(.["rustup", "target", "add", MACOS_X64_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for x64 MACOS.");
                exit(1);
            }

            array_add(*targets, MACOS_ARM64_BUILD_TARGET);
            _, ok = run_cmd(.["rustup", "target", "add", MACOS_ARM64_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for ARM64 MACOS.");
                exit(1);
            }

        case .WINDOWS;
            array_add(*targets, WINDOWS_BUILD_TARGET);
            _, ok := run_cmd(.["rustup", "target", "add", WINDOWS_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for x64 Windows.");
                exit(1);
            }

        case .IOS;
            array_add(*targets, IOS_BUILD_TARGET);
            _, ok := run_cmd(.["rustup", "target", "add", IOS_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for ARM64 iOS.");
                exit(1);
            }

            array_add(*targets, IOS_SIMULATOR_BUILD_TARGET);
            _, ok = run_cmd(.["rustup", "target", "add", IOS_SIMULATOR_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for ARM64 iOS Simulator.");
                exit(1);
            }

        // This is probably totally wrong...
        case .LINUX;
            array_add(*targets, LINUX_BUILD_TARGET);
            _, ok := run_cmd(.["rustup", "target", "add", LINUX_BUILD_TARGET], "./wgpu-native", false);
            if !ok {
                log_error("Cannot add rustup target for x86_64 Linux GNU.");
                exit(1);
            }

        // TODO: make this work!
        case .ANDROID;
            log_error("Android is currently unsupported.");
            exit(1);
    }

    for target: targets {
        log("Compiling for target: %", target);

        cmd_str: [..]string;
        array_add(*cmd_str, "cargo", "build");
        if release {
            array_add(*cmd_str, "--release");
        }
        array_add(*cmd_str, "--target", target);

        result, ok := run_cmd(cmd_str, "./wgpu-native", true);
        if !ok {
            log_error("Failed to build wgpu-native for % and target % (%)", platform, target, ifx release then "release" else "debug");
            log_error(result);
            return false;
        }

        log("Compiling for target: % done!", target);
    }

    return true;
}

generate :: () {
    libpaths: [..]string;

    if OS == {
        case .WINDOWS; array_add(*libpaths, "./windows");
        case .MACOS; array_add(*libpaths, "./macos");
        case .LINUX; array_add(*libpaths, "./linux");
    }

    libnames: [..]string;
    array_add(*libnames, "libwgpu_native");

    strip_prefixes: [..]string;
    array_add(*strip_prefixes, "WGPU", "WGPU_", "wgpu");

    include_paths: [..]string;
    array_add(*include_paths, "./wgpu-native/ffi/webgpu-headers");

    source_files: [..]string;
    array_add(*source_files, "./wgpu-native/ffi/wgpu.h");

    ok := generate_bindings(.{
        libnames=libnames,
        libpaths=libpaths,
        strip_prefixes=strip_prefixes,
        include_paths=include_paths,
        source_files=source_files,
        strip_flags=Strip_Flags.FUNCTIONS_WITH_VALIST,
        generate_library_declarations=false,
        auto_detect_enum_prefixes = true,
        log_stripped_declarations = false,
        generate_compile_time_struct_checks = false,
        alias_original_enum_names=false,
    }, "wgpu_native.jai");
    if !ok {
        log_error("Failed to generate bindings");
        exit(1);
    }

    // Hack to have "normal" bools
    bindings, ok= := read_entire_file("wgpu_native.jai");
    if !ok {
        log_error("Failed to load bindings");
        exit(1);
    }

    bindings = replace(bindings, "Bool :: u32;", "Bool :: bool;");

    ok = write_entire_file("wgpu_native.jai", bindings);
        if !ok {
        log_error("Failed to write edited bindings");
        exit(1);
    }
}
