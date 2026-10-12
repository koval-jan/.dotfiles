#!/bin/bash

if [[ -d $HOME/.bun/bin ]]; then
    # bun
    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
fi
