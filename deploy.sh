#!/bin/bash

workspace_dir="${WORKSPACE}"
build_base="${WORKSPACE}/../builds/${BUILD_NUMBER}"
build_dir="${build_base}/build"
git_files="${build_base}/build/.git"
release_file="${build_base}/`date +%Y-%m-%d`-build${BUILD_NUMBER}.tar.gz"

echo -n "Copying files to build directory..."
cp -r ${workspace_dir} ${build_dir}
rm -rf ${git_files}
echo "DONE"


echo -n "Creating tar.gz file..."
tar -czvf ${release_file} --directory=${build_dir} . &>/dev/null
echo "DONE. File created ${release_file}"
