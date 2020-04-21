#/bin/bash
set -e

# Build YAC
# cd yac
# mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release && make -j4

cd ~/catkin_ws
catkin build -DCMAKE_BUILD_TYPE=Release yac yac_ros

source ~/catkin_ws/devel/setup.bash
# roslaunch yac_ros calib_mono.launch
# roslaunch yac_ros calib_stereo.launch
# roslaunch yac_ros calib_vicon.launch

# # Build tests
# cd tests
# ./test_aprilgrid
# ./test_calib_camera
# ./test_calib_data
# ./test_calib_stereo