# dotnet-cli docker image

## Build the Ubuntu Bionic base image

[![](https://images.microbadger.com/badges/version/sunside/trusty-libuv.svg)](http://microbadger.com/images/sunside/trusty-libuv "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/bionic-libuv.svg)](http://microbadger.com/images/sunside/xenial-libuv "Get your own image badge on microbadger.com")

The Ubuntu image [sunside/bionic-libuv](https://hub.docker.com/r/sunside/bionic-libuv/) is based on `ubuntu:bionic`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`.

```bash
docker build -t sunside/bionic-libuv:1.22.0 -f Dockerfile.bionic-libuv .
```

## Build the Mono base image

[![](https://images.microbadger.com/badges/version/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/trusty-mono "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/xenial-mono "Get your own image badge on microbadger.com")

The Mono image [sunside/bionic-mono](https://hub.docker.com/r/sunside/bionic-mono/) is based on a nightly build of `mono-runtime`.

```bash
docker build -t sunside/bionic-mono:5.14.0.177 -f Dockerfile.mono .
```

## Build the dotnet base image

[![](https://images.microbadger.com/badges/version/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own image badge on microbadger.com")

The dotnet image [sunside/dotnet](https://hub.docker.com/r/sunside/dotnet/) contains the latest  `dotnet` ("preview2") CLI version from [dot.net](https://dot.net).

```bash
docker build -t sunside/dotnet:2.1.4-1.1.10 -f Dockerfile.dotnet .
```
