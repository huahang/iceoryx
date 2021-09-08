load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "ice_c_publisher",
    srcs = [
        "ice_c_publisher.c",
        "sleep_for.h",
        "topic_data.h",
    ],
    deps = [
        "//iceoryx_binding_c",
    ],
)

cc_binary(
    name = "ice_c_subscriber",
    srcs = [
        "ice_c_subscriber.c",
        "sleep_for.h",
        "topic_data.h",
    ],
    deps = [
        "//iceoryx_binding_c",
    ],
)
