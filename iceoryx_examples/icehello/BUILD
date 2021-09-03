load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "iox_publisher_helloworld",
    srcs = [
        "iox_publisher_helloworld.cpp",
        "topic_data.hpp",
    ],
    deps = [
        "//iceoryx_posh",
    ],
)

cc_binary(
    name = "iox_subscriber_helloworld",
    srcs = [
        "iox_subscriber_helloworld.cpp",
        "topic_data.hpp",
    ],
    deps = [
        "//iceoryx_posh",
    ],
)
