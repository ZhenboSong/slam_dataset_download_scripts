#!/usr/bin/env bash

files=(https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_xyz.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_rpy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_xyz.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_rpy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_360.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_floor.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk2.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_room.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_360_hemisphere.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_360_kidnap.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_desk.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_large_no_loop.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_large_with_loop.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_long_office_household.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_pioneer_360.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_pioneer_slam.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_pioneer_slam2.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_pioneer_slam3.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_notexture_far.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_notexture_near_withloop.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_texture_far.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_texture_near_withloop.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_notexture_far.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_notexture_near.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_texture_far.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_texture_near.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_desk_with_person.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_static.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_xyz.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_halfsphere.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_rpy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_static.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_xyz.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_halfsphere.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_rpy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_plant.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_teddy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_coke.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_dishes.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_flowerbouquet.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_flowerbouquet_brownbackground.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_metallic_sphere.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_metallic_sphere2.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_cabinet.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_large_cabinet.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_teddy.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_xyz_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_rpy_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_desk2_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_360_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_room_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_plant_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_xyz_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_rpy_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_360_hemisphere_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_360_kidnap_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_desk_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_desk_with_person_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_pioneer_360_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_cabinet_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_large_cabinet_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_long_office_household_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_notexture_far_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_notexture_near_withloop_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_texture_far_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_nostructure_texture_near_withloop_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_notexture_far_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_notexture_near_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_texture_far_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_structure_texture_near_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_static_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_xyz_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_halfsphere_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_sitting_rpy_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_static_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_xyz_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_halfsphere_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_walking_rpy_validation.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_rgb_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_ir_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_large_checkerboard_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_rgb_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_ir_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg2/rgbd_dataset_freiburg2_large_checkerboard_calibration.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_calibration_rgb_depth.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_calibration_ir.tgz
https://vision.in.tum.de/rgbd/dataset/freiburg3/rgbd_dataset_freiburg3_checkerboard_large.tgz)



for i in ${files[@]}; do
        echo "Downloading: "$i
        wget $i
done

tgzfiles=(rgbd_dataset_freiburg1_xyz.tgz
rgbd_dataset_freiburg1_rpy.tgz
rgbd_dataset_freiburg2_xyz.tgz
rgbd_dataset_freiburg2_rpy.tgz
rgbd_dataset_freiburg1_360.tgz
rgbd_dataset_freiburg1_floor.tgz
rgbd_dataset_freiburg1_desk.tgz
rgbd_dataset_freiburg1_desk2.tgz
rgbd_dataset_freiburg1_room.tgz
rgbd_dataset_freiburg2_360_hemisphere.tgz
rgbd_dataset_freiburg2_360_kidnap.tgz
rgbd_dataset_freiburg2_desk.tgz
rgbd_dataset_freiburg2_large_no_loop.tgz
rgbd_dataset_freiburg2_large_with_loop.tgz
rgbd_dataset_freiburg3_long_office_household.tgz
rgbd_dataset_freiburg2_pioneer_360.tgz
rgbd_dataset_freiburg2_pioneer_slam.tgz
rgbd_dataset_freiburg2_pioneer_slam2.tgz
rgbd_dataset_freiburg2_pioneer_slam3.tgz
rgbd_dataset_freiburg3_nostructure_notexture_far.tgz
rgbd_dataset_freiburg3_nostructure_notexture_near_withloop.tgz
rgbd_dataset_freiburg3_nostructure_texture_far.tgz
rgbd_dataset_freiburg3_nostructure_texture_near_withloop.tgz
rgbd_dataset_freiburg3_structure_notexture_far.tgz
rgbd_dataset_freiburg3_structure_notexture_near.tgz
rgbd_dataset_freiburg3_structure_texture_far.tgz
rgbd_dataset_freiburg3_structure_texture_near.tgz
rgbd_dataset_freiburg2_desk_with_person.tgz
rgbd_dataset_freiburg3_sitting_static.tgz
rgbd_dataset_freiburg3_sitting_xyz.tgz
rgbd_dataset_freiburg3_sitting_halfsphere.tgz
rgbd_dataset_freiburg3_sitting_rpy.tgz
rgbd_dataset_freiburg3_walking_static.tgz
rgbd_dataset_freiburg3_walking_xyz.tgz
rgbd_dataset_freiburg3_walking_halfsphere.tgz
rgbd_dataset_freiburg3_walking_rpy.tgz
rgbd_dataset_freiburg1_plant.tgz
rgbd_dataset_freiburg1_teddy.tgz
rgbd_dataset_freiburg2_coke.tgz
rgbd_dataset_freiburg2_dishes.tgz
rgbd_dataset_freiburg2_flowerbouquet.tgz
rgbd_dataset_freiburg2_flowerbouquet_brownbackground.tgz
rgbd_dataset_freiburg2_metallic_sphere.tgz
rgbd_dataset_freiburg2_metallic_sphere2.tgz
rgbd_dataset_freiburg3_cabinet.tgz
rgbd_dataset_freiburg3_large_cabinet.tgz
rgbd_dataset_freiburg3_teddy.tgz
rgbd_dataset_freiburg1_xyz_validation.tgz
rgbd_dataset_freiburg1_rpy_validation.tgz
rgbd_dataset_freiburg1_desk_validation.tgz
rgbd_dataset_freiburg1_desk2_validation.tgz
rgbd_dataset_freiburg1_360_validation.tgz
rgbd_dataset_freiburg1_room_validation.tgz
rgbd_dataset_freiburg1_plant_validation.tgz
rgbd_dataset_freiburg2_xyz_validation.tgz
rgbd_dataset_freiburg2_rpy_validation.tgz
rgbd_dataset_freiburg2_360_hemisphere_validation.tgz
rgbd_dataset_freiburg2_360_kidnap_validation.tgz
rgbd_dataset_freiburg2_desk_validation.tgz
rgbd_dataset_freiburg2_desk_with_person_validation.tgz
rgbd_dataset_freiburg2_pioneer_360_validation.tgz
rgbd_dataset_freiburg3_cabinet_validation.tgz
rgbd_dataset_freiburg3_large_cabinet_validation.tgz
rgbd_dataset_freiburg3_long_office_household_validation.tgz
rgbd_dataset_freiburg3_nostructure_notexture_far_validation.tgz
rgbd_dataset_freiburg3_nostructure_notexture_near_withloop_validation.tgz
rgbd_dataset_freiburg3_nostructure_texture_far_validation.tgz
rgbd_dataset_freiburg3_nostructure_texture_near_withloop_validation.tgz
rgbd_dataset_freiburg3_structure_notexture_far_validation.tgz
rgbd_dataset_freiburg3_structure_notexture_near_validation.tgz
rgbd_dataset_freiburg3_structure_texture_far_validation.tgz
rgbd_dataset_freiburg3_structure_texture_near_validation.tgz
rgbd_dataset_freiburg3_sitting_static_validation.tgz
rgbd_dataset_freiburg3_sitting_xyz_validation.tgz
rgbd_dataset_freiburg3_sitting_halfsphere_validation.tgz
rgbd_dataset_freiburg3_sitting_rpy_validation.tgz
rgbd_dataset_freiburg3_walking_static_validation.tgz
rgbd_dataset_freiburg3_walking_xyz_validation.tgz
rgbd_dataset_freiburg3_walking_halfsphere_validation.tgz
rgbd_dataset_freiburg3_walking_rpy_validation.tgz
rgbd_dataset_freiburg1_rgb_calibration.tgz
rgbd_dataset_freiburg1_ir_calibration.tgz
rgbd_dataset_freiburg1_large_checkerboard_calibration.tgz
rgbd_dataset_freiburg2_rgb_calibration.tgz
rgbd_dataset_freiburg2_ir_calibration.tgz
rgbd_dataset_freiburg2_large_checkerboard_calibration.tgz
rgbd_dataset_freiburg3_calibration_rgb_depth.tgz
rgbd_dataset_freiburg3_calibration_ir.tgz
rgbd_dataset_freiburg3_checkerboard_large.tgz)



for i in ${tgzfiles[@]}; do
        echo "uzip: "$i
        tar -xzf $i
done
mkdir tgz
mv *.tgz tgz

mkdir freiburg1
mkdir freiburg2
mkdir freiburg3
mv -f rgbd_dataset_freiburg1_* freiburg1
mv -f rgbd_dataset_freiburg2_* freiburg2
mv -f rgbd_dataset_freiburg2_* freiburg2