FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive    # export DEBIAN_FRONTEND="noninteractive"
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

RUN apt-get update ; apt-get install -yq --no-install-recommends \ 
    wget \ 
    mesa-utils \
    libsm6 \
    xauth \
    binutils \
    xserver-xorg-input-void \
    x11-xserver-utils \
    openbox \
    libgl1-mesa-dri \
    binutils \
    tint2 \ 
    xinit \
    xserver-xorg-video-dummy \ 
    websockify \
    x-window-system

# apt for thewtex opengl
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git \
  libgl1-mesa-dri \
  menu \
  net-tools \
  openbox \
  python-pip \
  sudo \
  supervisor \
  tint2 \
  x11-xserver-utils \
  x11vnc \
  xinit \
  xserver-xorg-video-dummy \
  xserver-xorg-input-void \
  websockify && \
  rm -f /usr/share/applications/x11vnc.desktop && \
  pip install supervisor-stdout && \
  apt-get -y clean


RUN bash -c "wget https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh && \ 
    bash Anaconda3-4.3.0-Linux-x86_64.sh -f -b"
env PATH /root/anaconda3/bin:$PATH
RUN bash -c "~/anaconda3/bin/conda install -c menpo opencv3 -y"
RUN bash -c "~/anaconda3/bin/conda install -c conda-forge imageio -y"
RUN bash -c "wget http://srand.fr/negative_image.tar.gz && tar xvf negative_image.tar.gz"
# imageio -y"
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY images/ /images
CMD bash -c "jupyter-notebook --notebook-dir=/data"

