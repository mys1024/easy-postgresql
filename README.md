# easy-postgresql

Easily start up a **PostgreSQL** container with **Docker Compose**.

## Usage

1. Create a `.env` file in the root of the project with the following configurations:

    ```sh
    IMAGE=docker.io/bitnami/postgresql:latest
    PG_PASSWORD=YOUR_PASSWORD
    ```

2. Run the following command to start the container:

    ```sh
    docker-compose up -d
    ```

## License

[MIT](./LICENSE) License &copy; 2024-PRESENT [mys1024](https://github.com/mys1024)
