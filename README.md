# dotnet-cli docker image

## Build the Ubuntu Trusty base image

The Ubuntu image [sunside/trusty-libuv](https://hub.docker.com/r/sunside/trusty-libuv/) is based on `ubuntu:trusty`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`. 

```
docker build -t sunside/trusty-libuv:1.9.1 -f Dockerfile.trusty-libuv .
```

## Build the Mono base image

The Mono image [sunside/trusty-mono](https://hub.docker.com/r/sunside/trusty-mono/) is based on a nightly build of `mono-runtime`.

```
docker build -t sunside/trusty-mono:4.5.2.372 -f Dockerfile.mono .
```

## Build the dotnet base image

The dotnet image [sunside/dotnet](https://hub.docker.com/r/sunside/dotnet/) contains the latest  `dotnet` CLI version from [github.com/dotnet/cli](https://github.com/dotnet/cli).

```
docker build -t sunside/dotnet:latest -f Dockerfile.dotnet .
```

To build the official Ubuntu `preview2` version, use

```
docker build -t sunside/dotnet:official -f Dockerfile.dotnet-official .
```
