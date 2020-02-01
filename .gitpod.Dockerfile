FROM gitpod/workspace-full-vnc

# Install dependencies.
RUN sudo apt-get update \
 && sudo apt-get install -y \
  libasound2-dev \
  libgtk-3-dev \
  libxkbfile-dev \
  libsecret-1-dev \
  libnss3-dev \
 && sudo rm -rf /var/lib/apt/lists/*

RUN wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz \
    && vtar xzf Python-2.7.13.tgz \
    && cd Python-2.7.13 \
    && sudo ./configure--prefix=/usr \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes \
            --enable-unicode=ucs4 \
    && sudo make install \
    && sudo make altinstall
