# easy-postgresql

Easily start a [**PostgreSQL**](https://www.postgresql.org/) container with [**Docker Compose**](https://docs.docker.com/compose/).

## Usage

1. Create a file named `.env` with your custom configurations:

    ```sh
    POSTGRES_USER=postgres # optional, defaults to "postgres"
    POSTGRES_PASSWORD=123456 # optional, defaults to "123456"
    ```

2. Start:

    ```sh
    docker-compose up -d
    ```

## License

[MIT](./LICENSE) License &copy; 2024-PRESENT [mys1024](https://github.com/mys1024)
