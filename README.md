# easy-postgresql

Easily startup a [**PostgreSQL**](https://www.postgresql.org/) container with [**Docker Compose**](https://docs.docker.com/compose/).

## Usage

1. **(Optional)** Create a `.env` file with your custom configurations:

    ```sh
    POSTGRES_IMAGE=docker.io/library/postgres:17 # optional, defaults to 'docker.io/library/postgres:17'
    POSTGRES_USER=postgres # optional, defaults to 'postgres'
    POSTGRES_PASSWORD=123456 # optional, defaults to '123456'
    ```

2. Startup:

    ```sh
    docker-compose up -d
    ```

## License

[MIT](./LICENSE) License &copy; 2024-PRESENT [mys1024](https://github.com/mys1024)
