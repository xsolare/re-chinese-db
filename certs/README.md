## Generate TLS Assets

This is for quickly building tls assets for this demo, it's not for production. It also uses the Elasticsearch docker image on Elasticsearch's docker registry [elasticsearch:7.3.1](https://www.docker.elastic.co/r/elasticsearch/elasticsearch:7.10.2). It requires docker, bash and openssl.

1.  Set up tls config

    [./configs/dev-network.yml](./configs/dev-network.yml)

1.  Generate tls server certificate, server key, certificate authority

    Dry run enabled by default

    ```bash
    ./generate-tls-assets.sh -c ./configs/dev-network.yml
    ```

    Generate assets

    ```bash
    ./generate-tls-assets.sh -f -c ./configs/dev-network.yml
    ```
