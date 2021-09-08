#!/bin/bash

CONFIGDIR="`pwd`"
WORKSPACE=$(git rev-parse --show-toplevel)
SESSION=iceensemble
tmux="tmux -2 -q"

$tmux kill-server

$tmux has-session -t $SESSION
if [ $? -eq 0 ]; then
       echo "Session $SESSION already exists. Attaching to session."
       $tmux attach -t $SESSION
       exit 0;
fi

command -v tmux >/dev/null 2>&1 || { echo >&2 "tmux is not installed but required. Trying to install it..."; sudo apt-get install tmux; }

$tmux new-session -d -s $SESSION
$tmux new-window -a -t $SESSION bazel run //iceoryx_posh:iox-roudi

$tmux split-window -t 0 -h bazel run //iceoryx_examples/icehello:iox_publisher_helloworld
$tmux split-window -t 1 -h bazel run //iceoryx_examples/icedelivery:iox_publisher
$tmux split-window -t 0 -h bazel run //iceoryx_examples/icedelivery:iox_publisher_untyped
$tmux split-window -t 0 -v bazel run //iceoryx_examples/iceoptions:iox_publisher_with_options
$tmux split-window -t 2 -v bazel run //iceoryx_examples/icedelivery_in_c:ice_c_publisher
$tmux split-window -t 4 -v bazel run //iceoryx_examples/icedelivery:iox_subscriber
$tmux split-window -t 6 -v bazel run //iceoryx_examples/iceoptions:iox_subscriber_with_options

$tmux attach -t $SESSION
