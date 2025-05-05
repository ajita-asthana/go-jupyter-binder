from jupyter/minimal-notebook:latest

USER root

#Install Go
RUN apt-get update && \
    apt-get install -y --no-install-recomments \
    golang \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

#Install gophernotes 
RUN go install github.com/gopherdata/gophernotes@latest && \
    mkdir -p ~/.local/share/jupyter/kernels/gophernotes && \
    cd ~/.local/share/jupyter/kernels/gophernotes && \
    cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@*/kernel/* "."

#Set Go environment variables 
ENV GOPATH=${HOME}/go
ENV PATH=${PATH}:${GOPATH}/bin