FROM gitpod/workspace-full-vnc

# Install dependencies.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  libasound2-dev \
  libgtk-3-dev \
  libsecret-1-dev \
  libnss3-dev \
 && sudo rm -rf /var/lib/apt/lists/*