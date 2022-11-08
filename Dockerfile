FROM caddy:2.6.2-builder-alpine AS builder
RUN xcaddy build --with github.com/caddy-dns/lego-deprecated

FROM caddy:2.6.2-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
