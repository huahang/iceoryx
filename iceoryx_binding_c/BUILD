load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "iceoryx_binding_c",
    srcs = glob([
        "source/**/*.cpp",
    ]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//iceoryx_posh",
    ],
)
