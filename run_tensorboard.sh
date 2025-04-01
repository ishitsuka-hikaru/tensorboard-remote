#!/bin/bash
LOGDIR="/mnt/stereo/hmr/base"
HOST="0.0.0.0"
PORT="6006"

poetry run tensorboard --logdir="$LOGDIR" --host="$HOST" --port="$PORT"
