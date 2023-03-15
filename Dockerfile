ARG RATHOLE_VERSION
FROM rapiz1/rathole:${RATHOLE_VERSION:-v0.4.7} as rathole

ARG CURL_VERSION
FROM curlimages/curl:${CURL_VERSION:-7.88.1}
COPY --from=rathole /app/rathole ./
COPY . .
ENTRYPOINT ["/bin/sh", "-c", "./entrypoint.sh"]