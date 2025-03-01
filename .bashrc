#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# tmux
#if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
#    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
#fi

git_branch='`git rev-parse --abbrev-ref HEAD 2> /dev/null | sed s/^/\ \|\ /` '
emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
PS1="🐊 \u@\033[38;5;6m\]\H\[$(tput sgr0)\] \w\[\033[38;5;10m\]$git_branch\n\[$(tput sgr0)\]$emoji "

export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:/home/jarede/.dotnet/tools"

alias ls='ls -laFh --color=auto'
alias grep='rg --color=auto'
alias tmux='tmux -2'

# Bistek
export LD_LIBRARY_PATH=/home/jarede/projetos/bistek/instantclient_12_2:$LD_LIBRARY_PATH
export BSTK_AMBIENTE=dev
alias api='ssh api.bistek.com.br -l jarede.silva'
alias dev='ssh dev.bistek.com.br -l jarede.silva'
alias vcs='ssh vcs.bistek.com.br -l root'
