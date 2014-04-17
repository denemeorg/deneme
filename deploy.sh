#!/bin/bash

workspace_dir="${WORKSPACE}"
build_base="${WORKSPACE}/../builds/${BUILD_NUMBER}"
build_dir="${build_base}/build"
build_file="${build_base}/`date +%Y-%m-%d`-${BUILD_NUMBER}.tar.gz"

echo -n "Copying files to build directory..."
cp -r ${workspace_dir} ${build_dir}
echo "DONE"


echo -n "Creating tar.gz file..."
tar -czvf ${build_file} --directory=${build_dir} .
echo "DONE"
