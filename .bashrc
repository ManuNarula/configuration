#
# ~/.bashrc
#

export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export TERM="xterm-256color"
export PATH="$HOME/.scripts:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

#Vi Mode
set editing-mode vi
set -o vi


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='\e[0;31](\u@\h)\e[m\e[0;36](\W)\e[m\$ '

alias ls='ls --color=auto'
alias v="vim"
alias nv="nvim"
alias zsn="nvim ~/.zshrc"
alias aln="nvim ~/.config/alacritty/alacritty.yml"
alias pcn="nvim ~/.config/picom/picom.conf"
alias awn="nvim ~/.config/awesome/rc.lua"
alias nvi="nvim ~/.config/nvim/init.vim"
alias nvr="nvim ~/.vimrc"

alias scl='cd ~/school'
alias sc11='cd ~/school/Gr11'
alias cx='ranger ~/documents/comics '

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
alias cdhf='cd $(fd --type d --hidden --exclude .mozilla | fzf)'
alias cdf='cd $(fd --type d --exclude png | fzf)'
alias ls='ls --color=auto'
#alias ls='lsd'
alias fvi='vim -c FZF'
alias fnv='nvim -c :FZF'
alias fvi='vim -c :FZF'
alias zde="devour zathura"
alias mde="devour mpv"
alias upd="doas pacman -Syyu ; npm update ; npm upgrade ; cargo update "
alias zpf='filepath=$(fzf -q .pdf ); zathura $filepath'
alias dpf='filepath=$(fzf -q .doc ); zathura $filepath'
alias zdf='filepath=$(fzf -q .pdf ); devour zathura $filepath'
alias update-grub='sudo  grub-mkconfig -o /boot/grub/grub.cfg'
alias opp='picture=$(fzf); sxiv $picture'
#alias vfd='video=$(fzf -q '.mp4' ); devour mpv $video'
alias mfd='track=$(fzf -q .mp3 ); mpv --no-video $track '
#alias mkf='video=$(fzf -q .mkv ) ; devour mpv $video'
alias vfm='vid=$(fzf -q .m); devour mpv $vid'
alias cfb='comic=$(fzf -q .cbr); devour zathura -c "set recolor false" $comic'
alias fc='dir=$(fd --type d --exclude png | fzf); cd $dir'
alias fch='dir=$(fd -H --type d --exclude png --exclude .mozzila | fzf); cd $dir'
alias lst='lsd --tree'
alias lmf='album=$(fd --type d --exclude png | fzf -q music); mpv --no-video --playlist=$album'
alias lsf='album=$(fd --type d --exclude png | fzf -q music); mpv --no-video --playlist=$album --shuffle'
alias pcf='folder=$(fd --type d | fzf); devour pcmanfm $folder'
alias runpy='pythonfile=$(fzf -q .py); python3 $pythonfile'
alias of='appimage=$(fzf -q .appimage); ./$appimage'
alias joplin='joplin --profile ~/.config/joplin-desktop/'
