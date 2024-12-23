export CONTAINER_NAME=postgresql

if podman ps -a --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
  if podman ps --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
    podman stop ${CONTAINER_NAME}
    podman rm ${CONTAINER_NAME}
  else
    podman rm ${CONTAINER_NAME}
  fi
else
  echo "'${CONTAINER_NAME}' does not exist"
fi
