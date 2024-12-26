# easy-postgresql

Easily startup a **PostgreSQL** container with **Docker Compose**.

## Usage

1. Create a `.env` file in the root of the project with the following configurations:

    ```sh
    POSTGRES_IMAGE=docker.io/postgres
    POSTGRES_PASSWORD=YOUR_PASSWORD
    ```

2. Startup:

    ```sh
    docker-compose up -d
    ```

## License

[MIT](./LICENSE) License &copy; 2024-PRESENT [mys1024](https://github.com/mys1024)
