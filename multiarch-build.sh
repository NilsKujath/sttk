#!/bin/zsh

# Check if the version argument is provided
if [ -z "$1" ]; then
  echo "Error: No version number provided."
  echo "Usage: $0 <version>"
  exit 1
fi

# Assign the first argument to the VERSION variable
VERSION=$1

# Run the docker buildx command with the provided version
docker buildx build --platform linux/amd64,linux/arm64 -t nilskujath/sttk:$VERSION --push .