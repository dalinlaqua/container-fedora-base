FROM fedora:latest

LABEL maintainer="dalin@laqua.ca"

RUN set -eux; \
    dnf update -y; \
    dnf install -y procps dumb-init; \
    dnf clean all; \
    rm -rf /var/cache/dnf/* /tmp/* /var/tmp/* /var/log/*.log;

ENTRYPOINT [ "dumb-init", "--" ]
