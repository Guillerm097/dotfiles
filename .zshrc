#!/bin/zsh

source ~/.fonts/*.sh

ANTIGEN=$HOME/antigen/antigen.zsh
source $ANTIGEN

antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)

antigen apply

alias vim=gvim
alias yt-mp3="youtube-dl -o \"~/Music/%(title)s.%(ext)s\" -x --audio-format mp3"
alias yt-mp4="youtube-dl -o \"~/Desktop/%(title)s.%(ext)s\""
