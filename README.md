# easy-postgresql

Easily startup a [**PostgreSQL**](https://www.postgresql.org/) container with [**Docker Compose**](https://docs.docker.com/compose/).

## Usage

1. Create a `.env` file in the root of the project with the following configurations:

    ```sh
    POSTGRES_IMAGE=docker.io/library/postgres:17
    POSTGRES_PASSWORD=YOUR_PASSWORD
    ```

2. Startup:

    ```sh
    docker-compose up -d
    ```

## License

[MIT](./LICENSE) License &copy; 2024-PRESENT [mys1024](https://github.com/mys1024)
