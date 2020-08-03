#!/bin/bash

tmuxenv(){
    eval $(tmux show-environment | sed -e '/^-/d' -e "s/'/'\\\\/g" -e "s/=\(.*\)/='\\1'/")
}

