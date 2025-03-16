# Misc commands
alias flush-cache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# extract audio
audio () {
  ffmpeg -i $1 -b:a 192K $2.mp3
}

# docker and kubernetes
if [ -x "$(command -v docker)" ]; then
  alias d-rm-vol="docker volume rm $(docker volume ls -qf dangling=true)"
  alias d-rm-img="docker rmi $(docker images -q -f dangling=true)"
  alias dc='docker compose'
  alias d='docker'
  alias kc='kubectl'
  alias k8='kc --context $K8S_CTX'
  alias dw="watch \"docker ps --format \\\"table {{.Names}}\t{{.Status}}\\\" -a\""
fi

kcp () {
  kc --context $2 get po -l name=$1 | awk '{print $1}' | head -2 | tail -1
}

kcc () {
  local pod=$(kcp $1 $2)
  echo “connecting to $pod on $2 ...”
  kc --context $2 exec --stdin --tty $pod -- /bin/sh
}
