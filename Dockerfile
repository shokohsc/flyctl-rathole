ARG RATHOLE_VERSION
FROM rapiz1/rathole:${RATHOLE_VERSION:-v0.5.0} as rathole
# FROM archef2000/rathole:latest as rathole

ARG CURL_VERSION
FROM curlimages/curl:${CURL_VERSION:-8.3.0}

COPY --from=rathole /app/rathole /home/curl_user/rathole
COPY --from=rathole /lib /lib
COPY --from=rathole /lib64 /lib64
# COPY --from=rathole /rathole /home/curl_user/rathole

COPY entrypoint.sh /home/curl_user/entrypoint.sh
COPY server.toml.tpl /home/curl_user/server.toml.tpl

ENTRYPOINT ["/bin/sh", "-c", "./entrypoint.sh"]