export CONTAINER_NAME=postgresql

if podman ps -a --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
  if podman ps --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
    podman stop ${CONTAINER_NAME}
  else
    echo "'${CONTAINER_NAME}' is already stopped"
  fi
else
  echo "'${CONTAINER_NAME}' does not exist"
fi
