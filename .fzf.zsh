# Setup fzf
# ---------
if [[ ! "$PATH" == */home/s1ck/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/s1ck/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/s1ck/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/s1ck/.fzf/shell/key-bindings.zsh"
