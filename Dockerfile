FROM alpine:latest

# Based on https://github.com/monostream/docker-rancher-compose/blob/master/Dockerfile

MAINTAINER Luis de Santiago <luis@tioluiso.es>

ARG RANCHER_VERSION=0.6.7

RUN apk add --quiet --no-cache ca-certificates curl unzip && \
	curl -sSL "https://github.com/rancher/cli/releases/download/v${RANCHER_VERSION}/rancher-linux-amd64-v${RANCHER_VERSION}.tar.gz" | tar -xzp -C /usr/local/bin/ --strip-components=2 && \
	rm -rf /var/cache/*