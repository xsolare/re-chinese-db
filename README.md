### Create cert

```bash
cd ./certs && ./generate-tls-assets.sh -c ./configs/dev-network.yml -f && cd ..
```

### Build the Postgres image

```bash
cd ./db
./build-postgres.sh
```

### Start

Before starting the stack, please note this command will start 2 docker images:

- [postgres:14.2](https://hub.docker.com/_/postgres) - postgres
- [dpage/pgadmin4](https://hub.docker.com/r/dpage/pgadmin4/) - useful db management web app, but please do not allow access to this docker container access to the public internet - it is not intended to be secure enough for internet traffic

```bash
./start.sh
```

### Get ip for db

```bash
docker inspect \
    -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' \
    <container_name_or_id>
```

### Verify connectivity

#### postgres

Postgres is listening to secure connections on tcp port 5432.

##### Verify tls encryption

```bash
openssl s_client -connect 0.0.0.0:5432 -starttls postgres
```

##### Connect to Postgres with psql and require tls encryption

```bash
psql --set=sslmode=require -h 0.0.0.0 -p 5432 -U postgres -d re_chinese
```

#### pgadmin4

By default, you can login to pgadmin4 at:

Note: unless you add the Certificate Authority to your host, your browser will get an **ssl warning**:

https://0.0.0.0:5433/login?next=%2F

Default login credentials which you can change in the [compose.yml](./compose.yml) under the `environment` variables list:

- `PGADMIN_SETUP_EMAIL`
- `PGADMIN_SETUP_PASSWORD`

- **Email Address / Username** - `user@domain.com`
- **Password** - `123321`

### Initialize db settings (optional)

```bash
./init-db.sh
```
