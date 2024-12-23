export CONTAINER_NAME=postgresql

if podman ps -a --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
  if podman ps --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
    echo "'${CONTAINER_NAME}' is already running"
  else
    podman start ${CONTAINER_NAME}
  fi
else
  mkdir -p ./volumes/postgresql
  podman run \
    -d \
    --restart always \
    --name ${CONTAINER_NAME} \
    -u root \
    -p 5432:5432 \
    -v ./volumes/postgresql:/bitnami/postgresql \
    -e POSTGRESQL_PASSWORD=001023 \
    dockerpull.org/bitnami/postgresql:latest
fi
