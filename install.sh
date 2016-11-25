#! /bin/sh
#
# install.sh
# Copyright (C) 2016 gabriel <ycao@>
#
#


apt-get install openssh-server sudo git fontconfig

git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
fc-cache -f -v $HOME/.local/share/fonts

apt-get install -y tmux
apt-get install -y zsh ttf-ancient-fonts command-not-found
apt-get install -y python-autopep8 vim silversearcher-ag cscope \
  exuberant-ctags
apt-get install -y man build-essential cmake cmake-curses-gui \
  autoconf libtool ninja-build gdb php7.0-cli php7.0-curl g++-5.4 \
  gcc-5.4 gfortran-5.4
apt-get install -y ipython python-pip python-dev python3-dev \
  locate htop wget apt-file astyle

# install two packages from Benyu
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/byzhang/master/install.sh)"
zsh -c "$(curl -fsSL https://raw.github.com/byzhang/my.files/master/install.sh)"

apt-get install -y libboost-all-dev libgoogle-glog-dev libbz2-dev \
  liblz4-dev libsnappy-dev zlib1g-dev libgoogle-perftools-dev \
  libtcmalloc-minimal4 libgflags-ev
apt-get install -y m4 libgtest-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  cd /usr/src/gtest && \
  cmake . && \
  make && \
  cp *.a /usr/lib
