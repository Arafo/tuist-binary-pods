platform :ios, '16.0'

plugin "cocoapods-binary-cache"
config_cocoapods_binary_cache(
    cache_repo: {
        "default" => {
            "remote" => "https://github.com/Arafo/tuist-binary-pods-cache",
            "local" => "~/.tuist-binary-cache/"
        }
    },
    excluded_pods: [],
    bitcode_enabled: true,
    device_build_enabled: true,
    xcframework: true
)

source 'https://github.com/CocoaPods/Specs.git'

install! 'cocoapods', :disable_input_output_paths => true

inhibit_all_warnings!
use_frameworks!

## Utils

def binary_pod(name, *args, **kwargs)
    kwargs_cloned = kwargs.clone
    kwargs_cloned[:binary] = true if kwargs_cloned[:binary].nil?
    pod name, *args, **kwargs_cloned
end

## Target

target 'TuistBinaryPods' do
    binary_pod 'Swinject'
    binary_pod 'PromiseKit'
    binary_pod 'Nuke'
end