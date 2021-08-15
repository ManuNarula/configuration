#Defualts
export EDITOR="nvim"
export TERMINAL="terminator"
export BROWSER="brave"
source ~/.config/zsh/.zprofile
export TERM="xterm-256color"

#Keyboard Controls
bindkey -v
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

#Plugins & Prompts
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  
PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f]> '
#PROMPT='[%F{cyan}%1~%f][%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f]  '
#PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f ]> '
#PROMPT='%F{cyan}%1~%f [%F{cyan}%f %F{red}%f %F{range}%f %F{blue}%f %F{red}%f %F{green}%f ]> '
#PROMPT='%F{cyan}%2~%f %F{white}%f ' ##Minimal Prompt
#PS1='%4~ %F{red}λ%f '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{orange}(%b)%r%f'
zstyle ':vcs_info:*' enable git

#Save yourself and use vim 
alias nano="nvim"
alias gedit="nvim"
alias leafpad="nvim"
alias vim="nvim"
alias kate="nvim"
alias vi="nvim"
alias geany="nvim"
alias v="vim"
alias edit="nvim"
alias zshrc="nvim ~/.config/zsh/.zshrc"

#Alias
alias ls="ls --color=auto"
alias ll="ls --color=auto -l"
alias g="git clone"
alias t="ttyper"
alias top="gotop"
alias d="doas"
alias file="ranger"
alias mdisk="doas fdisk -l | sed -e '/Disk \/dev\/loop/,+5d'"
alias nw="nitrogen --random --set-zoom-fill '/usr/share/backgrounds/Wallpaper Collection'"
alias nr="nitrogen --restore"
alias e="exit"
alias rm="rm -rf"
alias la="ls -all"
alias up="doas pacman -Syyu | echo updating system"
alias e="exit"
alias depression="sudo rm -rf --no-preserve-root" 
alias c="flameshot gui"
alias s="startx"

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
