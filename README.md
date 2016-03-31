# dotnet-cli docker image

## Build the Ubuntu Trusty base image

The Ubuntu image is based on `ubuntu:trusty`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`. 

```
docker build -t sunside/trusty-libuv:1.8.0 -f Dockerfile.trusty-libuv .
```

## Build the Mono base image

The Mono image is based on a nightly build of `mono-runtime`.

```
docker build -t sunside/trusty-mono:4.5.0.421 -f Dockerfile.mono .
```

## Build the dotnet base image

The dotnet image contains the latest  `dotnet` CLI version from [github.com/dotnet/cli](https://github.com/dotnet/cli).

```
docker build -t sunside/dotnet:latest -f Dockerfile.dotnet .
```