#!/bin/bash -e
sudo cp ros.key /usr/share/keyrings/ros-archive-keyring.gpg
sudo rm -f /etc/apt/sources.list.d/ros2*
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://mirrors.tuna.tsinghua.edu.cn/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2-latest.list > /dev/null
