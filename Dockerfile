FROM microsoft/dotnet:2.2-sdk-stretch

RUN apt-get install mono-devel ca-certificates-mono
