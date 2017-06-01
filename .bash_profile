set -o vi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

docker_running=$(docker-machine ls | grep default)
if [[ "$docker_runnig" == *"Stopped"* ]]
then
  echo "FYI - Docker is not running"
elif [[ "$docker_running" == *"Running"* ]]
then
  eval "$(docker-machine env dev)"
fi
