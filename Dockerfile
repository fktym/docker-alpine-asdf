FROM frolvlad/alpine-glibc:alpine-3.9

RUN apk upgrade --update && \
    apk add --no-cache --update git bash 

SHELL ["/bin/bash", "-l", "-c"]
# https://asdf-vm.com/#/core-manage-asdf-vm
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf && \
    echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc && \
    echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc && \
    source ~/.bashrc

ENV PATH="${PATH}:/root/.asdf/shims:/root/.asdf/bin"
