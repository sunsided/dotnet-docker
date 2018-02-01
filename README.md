# dotnet-cli docker image

## Build the Ubuntu Xenial base image

[![](https://images.microbadger.com/badges/version/sunside/trusty-libuv.svg)](http://microbadger.com/images/sunside/trusty-libuv "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/xenial-libuv.svg)](http://microbadger.com/images/sunside/xenial-libuv "Get your own image badge on microbadger.com")

The Ubuntu image [sunside/xenial-libuv](https://hub.docker.com/r/sunside/xenial-libuv/) is based on `ubuntu:xenial`, contains `curl` and `vim-tiny` as well as a custom built version of `libuv`. 

```
docker build -t sunside:xenial-libuv:1.16.0 -f Dockerfile.xenial-libuv .
```

## Build the Mono base image

[![](https://images.microbadger.com/badges/version/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/trusty-mono "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/xenial-mono.svg)](http://microbadger.com/images/sunside/xenial-mono "Get your own image badge on microbadger.com")

The Mono image [sunside/xenial-mono](https://hub.docker.com/r/sunside/xenial-mono/) is based on a nightly build of `mono-runtime`.

```
docker build -t sunside/trusty-mono:5.3.0.67 -f Dockerfile.mono .
```

## Build the dotnet base image

[![](https://images.microbadger.com/badges/version/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/sunside/dotnet.svg)](http://microbadger.com/images/sunside/dotnet "Get your own image badge on microbadger.com")

The dotnet image [sunside/dotnet](https://hub.docker.com/r/sunside/dotnet/) contains the latest  `dotnet` ("preview2") CLI version from [dot.net](https://dot.net).

```
docker build -t sunside/dotnet:2.1.4 -f Dockerfile.dotnet .
```
