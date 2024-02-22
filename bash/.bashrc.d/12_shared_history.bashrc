export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
#shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias ha="history -a"
alias hb="history -a; history -r"

source /usr/share/doc/fzf/examples/key-bindings.bash

#export FZF_CTRL_T_OPTS="--preview 'batcat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
#export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window up:3:hidden:wrap --bind 'ctrl-/:toggle-preview' --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort' --color header:italic --header 'Press CTRL-Y to copy command into clipboard'"

#alias hr="history -r"
#alias hl="history | tail -20"
HISTIGNORE="ha:hb"

