#!/usr/bin/env bash

wget "https://s3.eu-central-1.amazonaws.com/avg-kitti/data_odometry_calib.zip"
wget "https://s3.eu-central-1.amazonaws.com/avg-kitti/data_odometry_poses.zip"
wget "https://s3.eu-central-1.amazonaws.com/avg-kitti/data_odometry_color.zip"
wget "https://s3.eu-central-1.amazonaws.com/avg-kitti/data_odometry_velodyne.zip"

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