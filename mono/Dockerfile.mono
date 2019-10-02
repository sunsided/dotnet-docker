FROM sunside/disco-libuv:1.32.0
MAINTAINER Markus Mayer <awesome@everybag.de>

RUN apt-get update \
	&& apt-get install -y gnupg2 ca-certificates \
	&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
	&& echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y mono-runtime mono-mcs mono-xbuild mono-devel ca-certificates-mono \
	                      fsharp msbuild nuget \
	&& apt-get -y autoremove \
	&& apt-get -y clean \
	&& rm -rf /var/lib/apt/lists/*
