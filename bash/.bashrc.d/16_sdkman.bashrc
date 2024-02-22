#!/bin/bash

SDKMAN_INIT="$HOME/.sdkman/bin/sdkman-init.sh"

if [[ -f "${SDKMAN_INIT}" ]]; then
    source "${SDKMAN_INIT}"
fi
