#!/bin/bash

# export magic to ensure gnome keyring is working from ssh sessions
if [ -n "${SSH_CLIENT}" ] ; then
    export "$(cat "/proc/$(command pgrep -u "$USER"  -f -- "dbus-daemon --session" )/environ" | tr '\0' '\n' | command grep "DBUS_SESSION_BUS_ADDRESS=")"
    
fi


SOCK="$HOME/.ssh/ssh_auth_sock"
if [[ -S $SSH_AUTH_SOCK ]] && [[ $SSH_AUTH_SOCK != $SOCK ]]; then
    ln -sf "$SSH_AUTH_SOCK" "$SOCK"
    export SSH_AUTH_SOCK="$SOCK"
fi

