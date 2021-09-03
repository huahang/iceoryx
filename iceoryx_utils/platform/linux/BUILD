load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "iceoryx_platform",
    srcs = glob(["source/**/*.cpp"]),
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.hpp",
    ]),
    includes = [
        "include",
    ],
    linkopts = [
        "-lacl",
        "-lpthread",
        "-lrt",
    ],
    visibility = ["//visibility:public"],
)
