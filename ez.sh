# !/bin/sh

# -------------------------------- configs -------------------------------- #

# Default configs
image=dockerpull.org/bitnami/postgresql:latest
container_name=pg
pg_volume=./volumes/postgresql
pg_port=5432
pg_password=123456

# Load configs from .env file
if [ -f ./.env ]; then
  source ./.env
fi

# -------------------------------- container engine -------------------------------- #

if type docker > /dev/null 2>&1; then
  engine="docker"
else
  if type podman > /dev/null 2>&1; then
    engine="podman"
  else
    echo "No container engine found"
    exit 1
  fi
fi

# -------------------------------- commands -------------------------------- #

function run_container() {
  if ${engine} ps -a --format "{{.Names}}" | grep -q "^${container_name}$"; then
    if ${engine} ps --format "{{.Names}}" | grep -q "^${container_name}$"; then
      echo "Container '${container_name}' is already running"
    else
      ${engine} start ${container_name}
    fi
  else
    mkdir -p ${pg_volume}
    ${engine} run \
      -d \
      --restart always \
      --name ${container_name} \
      -u root \
      -p ${pg_port}:5432 \
      -v ${pg_volume}:/bitnami/postgresql \
      -e POSTGRESQL_PASSWORD=${pg_password} \
      ${image}
  fi
}

function stop_container() {
  if ${engine} ps -a --format "{{.Names}}" | grep -q "^${container_name}$"; then
    if ${engine} ps --format "{{.Names}}" | grep -q "^${container_name}$"; then
      ${engine} stop ${container_name}
    else
      echo "Container '${container_name}' is already stopped"
    fi
  else
    echo "Container '${container_name}' does not exist"
  fi
}

function rm_container() {
  if ${engine} ps -a --format "{{.Names}}" | grep -q "^${container_name}$"; then
    if ${engine} ps --format "{{.Names}}" | grep -q "^${container_name}$"; then
      ${engine} rm -f ${container_name}
    else
      ${engine} rm ${container_name}
    fi
  else
    echo "Container '${container_name}' does not exist"
  fi
}

# -------------------------------- main -------------------------------- #

# Run command
if [ $1 = "run" ]; then
  run_container
elif [ $1 = "stop" ]; then
  stop_container
elif [ $1 = "rm" ]; then
  rm_container
else
  echo "Usage: $0 <run|stop|rm>"
  exit 1
fi
