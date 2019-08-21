#!/usr/bin/env bash

wget "http://kitti.is.tue.mpg.de/kitti/data_odometry_calib.zip"
wget "http://kitti.is.tue.mpg.de/kitti/data_odometry_poses.zip"
wget "http://kitti.is.tue.mpg.de/kitti/data_odometry_color.zip"
wget "http://kitti.is.tue.mpg.de/kitti/data_odometry_velodyne.zip"

echo "uzip: calib"
tar -xzf data_odometry_calib.zip
echo "uzip: data_odometry_poses.zip"
tar -xzf data_odometry_poses.zip
echo "uzip: data_odometry_color.zip"
tar -xzf data_odometry_color.zip
echo "uzip: data_odometry_velodyne.zip"
tar -xzf data_odometry_velodyne.zip

mkdir zip
mv *.zip zip