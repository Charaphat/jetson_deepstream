sudo apt purge --autoremove cmake
wget https://cmake.org/files/v3.25/cmake-3.25.3-linux-aarch64.tar.gz
tar -xzvf cmake-3.25.3-linux-aarch64.tar.gz
sudo mv cmake-3.25.3-linux-aarch64 /opt/cmake-3.25.3
sudo rm -rf /usr/local/bin/cmake
sudo ln -s /opt/cmake-3.25.3/bin/cmake /usr/local/bin/cmake
sudo pip3 install onnx onnxsim onnxruntime
sudo apt install -y libgstrtspserver-1.0-0
sudo apt install -y libssl1.0.0 libgstreamer1.0-0 gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav libgstrtspserver-1.0-0 libjansson4
sudo pip3 install --upgrade python-dateutil
