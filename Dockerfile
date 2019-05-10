ARG ARCH
FROM alpine-${ARCH:-amd64}

RUN apk add --no-cache jq curl bind-tools

ENV BEHAVIOUR_IF_STAGE2_FAILS=2 CF_API=https://api.cloudflare.com/client/v4 RRTYPE=A

COPY root /
