#!/bin/sh
set -e

exit_script() {
    echo "SIGTERM received"
    echo "Stopping the training"
    trap - TERM # clear the trap
    exit 1
}
trap exit_script TERM

jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root --config jupyter_config.py