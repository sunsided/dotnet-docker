FROM sunside/disco-mono:6.4.0.198
MAINTAINER Markus Mayer <awesome@nyris.io>

RUN     wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
        && dpkg -i packages-microsoft-prod.deb \
        && apt-get update \
        && apt-get install -y apt-transport-https \
        && apt-get install -y dotnet-sdk-3.1 dotnet-sdk-3.0 dotnet-sdk-2.2 dotnet-sdk-2.1 \
	&& apt-get -y autoremove \
	&& apt-get -y clean \
	&& rm -rf /var/lib/apt/lists/*

# Workaround for https://github.com/dotnet/cli/issues/1582, Bug only appears in Docker < 1.11.0
# To enable, uncomment the next line:
# ENV LTTNG_UST_REGISTER_TIMEOUT 0

# fix for System.Native not being found on net4xx targets
ENV SYSTEM_NATIVE_DLL /usr/share/dotnet/shared/Microsoft.NETCore.App/3.1.0/System.Native.so
RUN test -e ${SYSTEM_NATIVE_DLL} && \
   ln -s ${SYSTEM_NATIVE_DLL} /usr/lib/libSystem.Native.so && \
   ldconfig

# Trigger the population of the local package cache  
ENV NUGET_XMLDOC_MODE skip
RUN mkdir warmup \
    && cd warmup \
    && dotnet new console \
    && cd .. \
    && rm -rf warmup

# Workaround to build and run netXXX apps using dotnet
ENV FrameworkPathOverride /usr/lib/mono/4.5/
RUN dotnet --list-sdks
