ARG FRP_VERSION
FROM ghcr.io/fatedier/frps:${FRP_VERSION:-v0.62.0}

RUN apk add --no-cache curl

COPY entrypoint.sh entrypoint.sh
COPY server.toml.tpl server.toml.tpl

ENTRYPOINT ["/bin/sh", "-c", "./entrypoint.sh"]