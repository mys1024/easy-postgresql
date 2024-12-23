mkdir -p ./volumes/postgresql

podman run \
  -d \
  --restart always \
  --name postgresql \
  -u root \
  -p 5432:5432 \
  -v ./volumes/postgresql:/bitnami/postgresql \
  -e POSTGRESQL_PASSWORD=001023 \
  dockerpull.org/bitnami/postgresql:latest
