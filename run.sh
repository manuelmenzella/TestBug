#!/bin/bash
set -e

# Change directory to script directory.
cd "${0%/*}"

# Start docker container.
gradle build && \
  docker build -t testbug . && \
  docker run -it -p 8080:8080 testbug
