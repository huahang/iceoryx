load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "iceoryx_posh",
    srcs = [
        "source/capro/capro_message.cpp",
        "source/capro/service_description.cpp",
        "source/log/posh_logging.cpp",
        "source/mepoo/chunk_header.cpp",
        "source/mepoo/chunk_management.cpp",
        "source/mepoo/chunk_settings.cpp",
        "source/mepoo/mem_pool.cpp",
        "source/mepoo/memory_info.cpp",
        "source/mepoo/memory_manager.cpp",
        "source/mepoo/mepoo_config.cpp",
        "source/mepoo/mepoo_segment.cpp",
        "source/mepoo/segment_config.cpp",
        "source/mepoo/segment_manager.cpp",
        "source/mepoo/shared_chunk.cpp",
        "source/mepoo/shm_safe_unmanaged_chunk.cpp",
        "source/popo/building_blocks/condition_listener.cpp",
        "source/popo/building_blocks/condition_notifier.cpp",
        "source/popo/building_blocks/condition_variable_data.cpp",
        "source/popo/building_blocks/locking_policy.cpp",
        "source/popo/building_blocks/typed_unique_id.cpp",
        "source/popo/listener.cpp",
        "source/popo/notification_info.cpp",
        "source/popo/ports/application_port.cpp",
        "source/popo/ports/application_port_data.cpp",
        "source/popo/ports/base_port.cpp",
        "source/popo/ports/base_port_data.cpp",
        "source/popo/ports/client_port_data.cpp",
        "source/popo/ports/client_port_roudi.cpp",
        "source/popo/ports/client_port_user.cpp",
        "source/popo/ports/interface_port.cpp",
        "source/popo/ports/interface_port_data.cpp",
        "source/popo/ports/publisher_port_data.cpp",
        "source/popo/ports/publisher_port_roudi.cpp",
        "source/popo/ports/publisher_port_user.cpp",
        "source/popo/ports/server_port_data.cpp",
        "source/popo/ports/server_port_roudi.cpp",
        "source/popo/ports/server_port_user.cpp",
        "source/popo/ports/subscriber_port_data.cpp",
        "source/popo/ports/subscriber_port_multi_producer.cpp",
        "source/popo/ports/subscriber_port_roudi.cpp",
        "source/popo/ports/subscriber_port_single_producer.cpp",
        "source/popo/ports/subscriber_port_user.cpp",
        "source/popo/trigger.cpp",
        "source/popo/trigger_handle.cpp",
        "source/popo/user_trigger.cpp",
        "source/runtime/ipc_interface_base.cpp",
        "source/runtime/ipc_interface_creator.cpp",
        "source/runtime/ipc_interface_user.cpp",
        "source/runtime/ipc_message.cpp",
        "source/runtime/ipc_runtime_interface.cpp",
        "source/runtime/node.cpp",
        "source/runtime/node_data.cpp",
        "source/runtime/node_property.cpp",
        "source/runtime/port_config_info.cpp",
        "source/runtime/posh_runtime.cpp",
        "source/runtime/posh_runtime_single_process.cpp",
        "source/runtime/shared_memory_user.cpp",
        "source/version/version_info.cpp",
    ],
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.inl",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//iceoryx_utils",
    ],
)

cc_library(
    name = "iceoryx_posh_gateway",
    srcs = [
        "source/gateway/gateway_base.cpp",
    ],
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.inl",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":iceoryx_posh",
    ],
)

cc_library(
    name = "iceoryx_posh_roudi",
    srcs = [
        "source/roudi/application/iceoryx_roudi_app.cpp",
        "source/roudi/application/roudi_app.cpp",
        "source/roudi/iceoryx_roudi_components.cpp",
        "source/roudi/memory/default_roudi_memory.cpp",
        "source/roudi/memory/iceoryx_roudi_memory_manager.cpp",
        "source/roudi/memory/memory_block.cpp",
        "source/roudi/memory/memory_provider.cpp",
        "source/roudi/memory/mempool_collection_memory_block.cpp",
        "source/roudi/memory/mempool_segment_manager_memory_block.cpp",
        "source/roudi/memory/port_pool_memory_block.cpp",
        "source/roudi/memory/posix_shm_memory_provider.cpp",
        "source/roudi/memory/roudi_memory_manager.cpp",
        "source/roudi/port_manager.cpp",
        "source/roudi/port_pool.cpp",
        "source/roudi/process.cpp",
        "source/roudi/process_manager.cpp",
        "source/roudi/roudi.cpp",
        "source/roudi/roudi_cmd_line_parser.cpp",
        "source/roudi/roudi_cmd_line_parser_config_file_option.cpp",
        "source/roudi/roudi_config.cpp",
        "source/roudi/service_registry.cpp",
    ],
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.inl",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":iceoryx_posh",
    ],
)

cc_library(
    name = "iceoryx_posh_config",
    srcs = [
        "source/gateway/gateway_config.cpp",
        "source/gateway/toml_gateway_config_parser.cpp",
        "source/log/posh_config_logging.cpp",
        "source/roudi/roudi_config_toml_file_provider.cpp",
    ],
    hdrs = glob([
        "source/**/*.hpp",
        "include/**/*.h",
        "include/**/*.hpp",
        "include/**/*.inl",
    ]),
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":iceoryx_posh",
        ":iceoryx_posh_roudi",
    ],
)

cc_binary(
    name = "iox-roudi",
    srcs = [
        "source/roudi/application/roudi_main.cpp",
    ],
    deps = [
        ":iceoryx_posh_config",
        ":iceoryx_posh_roudi",
    ],
)
