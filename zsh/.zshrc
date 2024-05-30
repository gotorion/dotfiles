# Default prompt
autoload -U colors && colors
PS1="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[magenta]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
# alias
alias s="ls --color=always"
alias l="ls -l"
alias v="nvim"
alias p="python3"
alias g="gdb -q"
alias c="clear"

alias ec="emacsclient"
alias en="emacs -nw"
alias c++="clang++"
alias tldr="~/.local/bin/tldr"
alias memcheck='valgrind --leak-check=full --show-leak-kinds=all --tool=memcheck --log-file=memcheck.log'

# User specific environment
export EDITOR=/usr/bin/nvim
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

ulimit -c 819200
PAGER='less -X -M' export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" export LESS=' -R '
