if [[ -f "$HOME/.nvm/nvm.sh" ]]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#    mapfile -t __NODE_GLOBALS < <(find "$NVM_DIR/versions/node/"*/bin/ -maxdepth 1 -mindepth 1 -type l -print0 | xargs --null -n1 basename | sort --unique)
#    __NODE_GLOBALS+=(node nvm yarn)

#    # instead of using --no-use flag, load nvm lazily:
#    _load_nvm() {
#        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#    }

#   for cmd in "${__NODE_GLOBALS[@]}"; do
#        eval "function ${cmd}(){ unset -f ${__NODE_GLOBALS[*]}; _load_nvm; unset -f _load_nvm; ${cmd} \"\$@\"; }"
#    done
#    unset cmd __NODE_GLOBALS
fi
