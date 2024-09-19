FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
  ros-noetic-rosbridge-server \
  && rm -rf /var/lib/apt/lists/*

CMD ["roslaunch", "rosbridge_server", "rosbridge_websocket.launch"]