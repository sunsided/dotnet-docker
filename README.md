# dotnet-cli docker image

## Build the Ubuntu Trusty base image

[![](https://images.microbadger.com/badges/version/sunside/trusty-libuv.svg)](http://microbadger.com/images/sunside/trusty-libuv "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/trusty-libuv.svg)](http://microbadger.com/images/sunside/trusty-libuv "Get your own image badge on microbadger.com")

The Ubuntu image [sunside/trusty-libuv](https://hub.docker.com/r/sunside/trusty-libuv/) is based on `ubuntu:trusty`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`. 

```
docker build -t sunside/trusty-libuv:1.9.1 -f Dockerfile.trusty-libuv .
```

## Build the Mono base image

[![](https://images.microbadger.com/badges/version/sunside/trusty-mono.svg)](http://microbadger.com/images/sunside/trusty-mono "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/trusty-mono.svg)](http://microbadger.com/images/sunside/trusty-mono "Get your own image badge on microbadger.com")

The Mono image [sunside/trusty-mono](https://hub.docker.com/r/sunside/trusty-mono/) is based on a nightly build of `mono-runtime`.

```
docker build -t sunside/trusty-mono:4.7.0.593 -f Dockerfile.mono .
```

## Build the dotnet base image

[![](https://images.microbadger.com/badges/version/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own image badge on microbadger.com")

The dotnet image [sunside/dotnet](https://hub.docker.com/r/sunside/dotnet/) contains the latest  `dotnet` ("preview2") CLI version from [dot.net](https://dot.net).

```
docker build -t sunside/dotnet:official -f Dockerfile.dotnet-official .
```
