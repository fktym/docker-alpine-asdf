FROM fktym/alpine-asdf:latest

ARG GOLANG_VERSION=1.12.4
SHELL ["/bin/bash", "-c"]
RUN asdf plugin-add golang && \
    asdf install golang $GOLANG_VERSION && \
    asdf global golang $GOLANG_VERSION && \
    go version
