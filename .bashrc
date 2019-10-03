# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PATH="/home/svineet/code/Robot3T/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/home/svineet/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/svineet/code/google_cloud_setup/google-cloud-sdk/path.bash.inc' ]; then . '/home/svineet/code/google_cloud_setup/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/svineet/code/google_cloud_setup/google-cloud-sdk/completion.bash.inc' ]; then . '/home/svineet/code/google_cloud_setup/google-cloud-sdk/completion.bash.inc'; fi

# Google Cloud fast.ai instance, jupyter notebook starter command
export ZONE="us-west2-b" # budget: "us-west1-b"
export INSTANCE_NAME="my-fastai-instance"
alias jupyterfastai="gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080"

function mkcd() {
    mkdir $1
    cd $1
}

export PS1="\[\e[0;32m\]\D{%a %m/%d %I:%M %p} \[\e[1;36m\]\u \[\e[0;34m\]| \W\[\e[00m\] \$ "

alias l="ls"
alias ragner="ranger"

# Quick folder access
alias sens="cd ~/code/sensum/"
alias fnt="cd ~/code/fountane/"
alias cdml="cd ~/code/learning_ml/"
alias cs231="cd ~/code/learning_ml/cs231n/"
alias cdc="cd ~/code"
alias cdh="cd ~"
alias cdb="cd ~/books/"

alias diary="~/diary/diary"

alias aliases="cat ~/.bashrc | grep '^alias'"

alias ebashrc="vim ~/.bashrc"
alias sbashrc="source ~/.bashrc"

alias agenda="gvim ~/diary/Agenda.md"

alias gst="git status"

alias postman="./~/code/sensum/Postman/Postman"

alias pm='gio open "$(ls | pmenu)"'

# Todo.txt configurations
alias t='~/code/todo.txt-cli/todo.sh'
export TODOTXT_DEFAULT_ACTION=ls

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

