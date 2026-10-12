#!/bin/bash

if [[ -d $HOME/.opencode/bin ]]; then
    # opencode
    export PATH="$HOME/.opencode/bin:$PATH"
fi

if command -v opencode &> /dev/null; then
    source <(opencode completion)
fi

