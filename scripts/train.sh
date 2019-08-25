#!/bin/sh
set -e

exit_script() {
    echo "SIGTERM received"
    echo "Stopping the training"
    trap - TERM # clear the trap
    exit 1
}
trap exit_script TERM

echo "Start training at $(date +"%D %T")"

jupyter python3-nbconvert --to notebook --ExecutePreprocessor.kernel_name=py37 --execute notebooks/train_model.ipynb

