# go-jupyter-binder

This repository contains examples of running Go code in Jupyter notebooks using the gophernotes kernel.

# Launch on Binder

Click the button below to launch this repository on binder.
```
https://mybinder.org/v2/gh/ajita-asthana/go-jupyter-binder/HEAD
```
https://mybinder.org/badge_logo.svg

# Contents
    . hello-go.ipynb: A simple notebook demonstrating basic Go functionality
    . Dockerfile: Configuration for building the Binder environment with Go support

# Local Setup

If you want to run these notebooks locally:

1. Install Go: ```https://golang.org/doc/install```
2. Install jupyer: ```pip install jupyter```
3. Install gophernotes: 
    ```
    go install github.com/gopherdata/gophernotes@latest
    mkdir -p ~/.local/share/jupyter/kernels/gophernotes
    cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@*/kernel/* ~/.local/share/jupyter/kernels/gophernotes/
    ```

4. Run Jupyter: ```jupyter notebook```
