#!/bin/bash

REPO_URL="https://github.com/proninsn/shvirtd-example-python.git"
TARGET_DIR="/home/sergei/shvirtd-example-python"

if [ -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR already exists. Removing..."
    rm -rf "$TARGET_DIR"
fi

git clone "$REPO_URL" "$TARGET_DIR"
cd "$TARGET_DIR"

docker-compose up -d
