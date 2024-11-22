echo "$DOCKER_TOKEN" | docker login --username jomof --password-stdin
export DOCKER_TOKEN=
git pull
git submodule update --init --recursive --depth=1
