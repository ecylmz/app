#!/usr/bin/env bash

# Common installation for base environment

set -euo pipefail; [[ -z ${TRACE:-} ]] || set -x

export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get -y install lsb-release jq
