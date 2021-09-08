load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "iox_publisher_with_options",
    srcs = [
        "iox_publisher_with_options.cpp",
        "topic_data.hpp",
    ],
    deps = [
        "//iceoryx_posh",
    ],
)

cc_binary(
    name = "iox_subscriber_with_options",
    srcs = [
        "iox_subscriber_with_options.cpp",
        "topic_data.hpp",
    ],
    deps = [
        "//iceoryx_posh",
    ],
)
