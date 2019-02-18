#git auto completion setup 
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

#export GITHUB_API_TOKEN
#export GITHUB_EMAIL
#export GITHUB_USERNAME
#export NPM_TOKEN

alias load_docker='eval $(docker-machine env default)'
alias docker_stop_all='docker stop $(docker ps -q)'
alias docker_remove_all='docker rm $(docker ps -aq) && docker rmi $(docker images -q)'
alias ecr_login='eval $(aws ecr get-login --no-include-email)'
