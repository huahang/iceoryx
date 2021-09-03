load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "iceoryx_utils",
    srcs = glob(["source/**/*.cpp"]),
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.hpp",
        "include/**/*.inl",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//iceoryx_utils/platform/linux:iceoryx_platform",
    ],
)
