#Defualts
export EDITOR="nvim"
export TERMINAL="terminator"
export BROWSER="brave"
source ~/.config/zsh/.zprofile
export TERM="xterm-256color"
export PATH="$HOME/.scripts:$PATH"

#Keyboard Controls
bindkey -v

#Completion
setopt auto_pushd
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

#Plugins & Prompts
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  
#PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f]> '
#PROMPT='[%F{cyan}%1~%f][%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f]  '
#PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f ]> '
#PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f %F{red}%f %F{green}%f ]> '
#PROMPT='%F{cyan}%2~%f %F{white}%f ' ##Minimal Prompt
#PS1='%4~ %F{red}λ%f '
PROMPT='%{$fg[cyan]%}%c%{$reset_color%} %F{cyan}%f '
PROMPT+="\$vcs_info_msg_0_ "

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:*' enable git

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
#
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!'
    fi
}

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})"


alias v="vim"
alias nv="nvim"

#Alias
alias g="git clone"
alias t="ttyper"
alias top="gotop"
alias d="doas"
alias mdisk="sudo fdisk -l | sed -e '/Disk \/dev\/loop/,+5d'"
alias e="exit"
alias rm="rm -rf"
alias la="ls -all"
alias e="exit"
alias depression="sudo rm -rf --no-preserve-root" 
alias c="flameshot gui"
alias s="startx"
alias ns="xset -dpms ; xset s off ; xset s noblank"
alias fch='cd $(fd --type d --hidden --exclude .mozilla | fzf)'
alias fc='cd $(fd --type d --exclude png | fzf)'
alias mf='free -h | awk '/^Mem:/ {print $3 "/" $2}''

#History
HISTSIZE=25000
SAVEHIST=25000
HISTFILE=~/.config/zsh/history

#Flex on Windows, Ubuntu, and Fedora users
##Replace Nerdfetch with your prefered fetching software
nerdfetch

##Startup with ZSH
#echo "Hello"
time
