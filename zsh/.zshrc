
#Load plugins
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source /usr/share/z/z.sh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/my-theme.omp.json)"

#List files alias
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lah --color=auto --group-directories-first'

alias pacup='sudo pacman -Syu'
alias pacin='sudo pacman -S'
alias pacs='sudo pacman -Ss'

export GPG_TTY=$(tty)
fpath+=~/.zfunc

#Lazy git
lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

