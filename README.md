# dotnet-cli docker image

## Build the Ubuntu Bionic base image

[![](https://images.microbadger.com/badges/version/sunside/trusty-libuv.svg)](http://microbadger.com/images/sunside/trusty-libuv "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/bionic-libuv.svg)](http://microbadger.com/images/sunside/xenial-libuv "Get your own image badge on microbadger.com")

The Ubuntu image [sunside/bionic-libuv](https://hub.docker.com/r/sunside/disco-libuv/) is based on `ubuntu:disco`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`.

```bash
docker build -t sunside/bionic-libuv:1.32.0 -f Dockerfile.disco-libuv .
```

## Build the Mono base image

[![](https://images.microbadger.com/badges/version/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/trusty-mono "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/xenial-mono "Get your own image badge on microbadger.com")

The Mono image [sunside/bionic-mono](https://hub.docker.com/r/sunside/bionic-mono/) is based on a nightly build of `mono-runtime`. Make sure the `build.sh` file lists the correct versions;
you can check them on the [Mono download page](https://www.mono-project.com/download/stable/#download-lin) and the Ubuntu package repository at `http://origin-download.mono-project.com/repo/ubuntu/dists/bionic/main/binary-amd64/Packages` (or similar, depending on the current version).

```bash
docker build -t sunside/disco-mono:6.4.0.198 -f Dockerfile.mono .
```

## Build the dotnet base image

[![](https://images.microbadger.com/badges/version/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own image badge on microbadger.com")

The dotnet image [sunside/dotnet](https://hub.docker.com/r/sunside/dotnet/) contains the latest  `dotnet` ("preview2") CLI version from [dot.net](https://dot.net).

```bash
docker build -t sunside/dotnet:3.1.100-2.2.402 -f Dockerfile.dotnet .
docker build -t sunside/dotnet:3.1.100 -f Dockerfile.dotnet-slim .
```
