#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

git_branch='`git rev-parse --abbrev-ref HEAD 2> /dev/null | sed s/^/\ \|\ /` '
emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
PS1="🐊 \u@\033[38;5;6m\]\H\[$(tput sgr0)\] \w\[\033[38;5;10m\]$git_branch\n\[$(tput sgr0)\]$emoji "

export VISUAL=vim
export EDITOR="$VISUAL"
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:/home/jarede/.dotnet/tools"

alias ls='ls -laFh --color=auto'
alias grep='rg --color=auto'
alias find='fd'
alias tmux='tmux -2'

# Bistek
export LD_LIBRARY_PATH=/home/jarede/projetos/bistek/instantclient_12_2:$LD_LIBRARY_PATH
export BSTK_AMBIENTE=dev
alias api='ssh api.bistek.com.br -l jarede.silva'
alias api1='ssh 192.168.254.113 -l jarede.silva'
alias dev='ssh dev.bistek.com.br -l jarede.silva'
alias vcs='ssh vcs.bistek.com.br -l root'
alias qa='ssh qa.bistek.com.br -l jarede.silva'
alias gitb='ssh git.bistek.com.br -l root'

# dev
function dev_python_lint() {
    fd -e py|entr -s 'ruff check app --output-format=concise && pyright app'
}
function dev_test_pytest() {
    fd -e py|entr -s "ruff check --output-format=concise && pyright . && pytest $1"
}
alias lint='dev_python_lint'
alias dev_test='dev_test_pytest'

# BRV
function brv_test_unittest() {
    fd -e py|entr -s "mypy asap && ruff check asap && python -m unittest $1"
}
alias brv_test='brv_test_unittest'

export FLASK_APP=asaprest
export FLASK_ENV=development 
export FLASK_DEBUG=1 
export SECRET_KEY=some_secret_key 
export ASAP_AUTH_METHOD=fake 
export ASAP_LOG_LEVEL=INFO 
export ASAP_HOST="http://localhost:5000" 
export ASAP_DB_HOST="unittests-postgres" 
export ASAP_DB_PORT=5432 
export ASAP_DB_NAME="asap_local_dev" 
export ASAP_DB_USER="asap_local_dev" 

. "$HOME/.local/bin/env"
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} && ${SHLVL} == 1 ]]
then
	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
	exec fish $LOGIN_OPTION
fi
