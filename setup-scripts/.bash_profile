#git auto completion setup 
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/usr/local/opt/sqlite/bin:$PATH"

export ANDROID_HOME=/Users/hannarlee/Library/Android/sdk
export ANDROID_SDK=/Users/hannarlee/Library/Android/sdk
export ANDROID_NDK=/Users/hannarlee/Library/Android/android-ndk-r10e

export RAILS_APP_PWD=/Users/hannarlee/ct101-rails

#aliases
alias gotoAndroid='cd ~/ct101-android/Ct101/src'
alias gotoRails='cd ~/ct101-rails/'
alias gotoPartner='cd ~/ct101-partner-dashboard'
alias gotoPersonal='cd ~/personal/'
alias gotoScripts='cd ~/dev-tools/aws/scripts'
alias gotoDevTools='cd ~/dev-tools/'
alias gotoJSServer='cd ~/ct151-server/src/'
alias gotoClickarise='cd ~/ct151-mobile/src/'

export NVM_DIR="/Users/hannarlee/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

docker_running=$(docker-machine ls | grep default)
if [[ "$docker_running" != *"Running"* ]]
then
  echo "FYI - Docker is not running"
elif [[ "$docker_running" == *"Running"* ]]
then
  eval "$(docker-machine env default)"
fi

#export GITHUB_API_TOKEN
#export GITHUB_EMAIL
#export GITHUB_USERNAME
#export NPM_TOKEN

alias docker_stop_all='docker stop $(docker ps -q)'
alias docker_remove_all='docker rm $(docker ps -aq) && docker rmi $(docker images -q)'
alias ecr_login='eval $(aws ecr get-login --no-include-email)'
