FROM ppc64le/ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends \
  g++ \
  make \
  file \
  curl \
  ca-certificates \
  python2.7 \
  git \
  cmake \
  sudo \
  gdb \
  xz-utils

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]

ENV RUST_CONFIGURE_ARGS --build=ppc64le-unknown-linux-gnu
ENV RUST_CHECK_TARGET check
