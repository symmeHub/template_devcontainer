# BASIC LIBRARIES
apt-get update && \
    apt-get install -y git wget sudo cmake libncurses5-dev libncursesw5-dev build-essential ffmpeg libsm6 libxext6 libv4l-dev htop && \
    apt-get install -y libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libxtst-dev libxss-dev libdbus-1-dev libevent-dev libfontconfig1-dev libcap-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libegl1-mesa-dev gperf bison nodejs x11-apps xauth libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-keysyms1-dev libxcb-render-util0-dev libxcb-xkb-dev libxkbcommon-x11-0 libx11-dev libgles2-mesa-dev mesa-utils-extra && \
    apt-get clean
