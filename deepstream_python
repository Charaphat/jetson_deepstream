sudo apt -y update

sudo apt install -y python3-gi python3-dev python3-gst-1.0 python-gi-dev \
    python3 python3-pip python3.8-dev cmake g++ build-essential libglib2.0-dev \
    libglib2.0-dev-bin libgstreamer1.0-dev libtool m4 autoconf automake libgirepository1.0-dev libcairo2-dev
sudo pip3 install pyds

cd /opt/nvidia/deepstream/deepstream-6.3/sources/

sudo git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git
cd /opt/nvidia/deepstream/deepstream-6.3/sources/deepstream_python_apps
sudo git checkout v1.1.8
sudo git submodule update --init

sudo wget https://github.com/NVIDIA-AI-IOT/deepstream_python_apps/releases/download/v1.1.8/pyds-1.1.8-py3-none-linux_aarch64.whl
sudo pip3 install pyds-1.1.8-py3-none-linux_aarch64.whl

sudo apt-get install -y apt-transport-https ca-certificates -y
sudo update-ca-certificates

cd /opt/nvidia/deepstream/deepstream-6.3/sources/deepstream_python_apps/bindings/
sudo mkdir build
cd /opt/nvidia/deepstream/deepstream-6.3/sources/deepstream_python_apps/bindings/build
sudo cmake ..  -DS_VERSION=6.3 -DPYTHON_MAJOR_VERSION=3 -DPYTHON_MINOR_VERSION=8 \
    -DPIP_PLATFORM=linux_aarch64 -DDS_PATH=/opt/nvidia/deepstream/deepstream-6.3/
sudo make
