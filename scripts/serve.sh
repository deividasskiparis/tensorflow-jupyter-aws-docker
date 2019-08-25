#!/bin/sh
set -e

exit_script() {
    echo "SIGTERM received"
    echo "Stopping the training"
    trap - TERM # clear the trap
    exit 1
}
trap exit_script TERM

echo "You have been served"
# AWS Sagemaker - write here your code for serving the trained model on Sagemaker