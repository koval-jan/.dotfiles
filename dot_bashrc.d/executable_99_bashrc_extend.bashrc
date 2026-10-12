#!/bin/bash

readarray -d '' files < <(find "$HOME/.bashrc_extend.d/" -name '*.bashrc' -print0 | sort -z)

for file in "${files[@]}"; do
    source "$file"
done

