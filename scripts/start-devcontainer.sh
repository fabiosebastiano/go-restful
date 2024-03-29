#!/bin/bash

# Get repo absolute location for mounting into the container.
#local_workdir=$(cd $(dirname $(dirname "${BASH_SOURCE[0]}")) >/dev/null 2>&1 && pwd)
local_workdir=/Users/fabioSebastiano/go/src/go-restful

main() {
  # Working directory inside the container.
  local container_workdir=/go/src/github.com/fabiosebastiano/go-restful
  # Identifying container name.
  local container_name=go-restful

  docker run --rm -it \
    --name $container_name \
    --volume $local_workdir:$container_workdir \
    --workdir $container_workdir \
    golang
}

main
