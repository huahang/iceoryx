#ifndef __ICEORYXVERSIONS__
#define __ICEORYXVERSIONS__

#define ICEORYX_VERSION_MAJOR    1
#define ICEORYX_VERSION_MINOR    0
#define ICEORYX_VERSION_PATCH    1
#define ICEORYX_VERSION_TWEAK    0

#define ICEORYX_LATEST_RELEASE_VERSION    "1.0.1"
#define ICEORYX_BUILDDATE                 "2021-09-03T08:33:05Z"
#define ICEORYX_SHA1                      "a07d83b7cfc5fc3f93d9bbd21b22830b65a0ba2e"

#include "iceoryx_posh/internal/log/posh_logging.hpp"

#define ICEORYX_PRINT_BUILDINFO()     iox::LogInfo() << "Built: " << ICEORYX_BUILDDATE;


#endif
