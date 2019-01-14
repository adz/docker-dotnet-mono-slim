FROM microsoft/dotnet:2.2-sdk-stretch

# From:
# https://www.mono-project.com/download/stable/#download-lin-debian

# Add the Mono repository to your system
RUN apt-get update && \
  apt-get install -y \
      apt-transport-https dirmngr && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
  echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list && \
  apt-get update && \
  apt-get install -y mono-devel ca-certificates-mono
