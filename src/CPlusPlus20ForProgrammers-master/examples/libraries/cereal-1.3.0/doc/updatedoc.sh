#!/usr/bin/env bash

# Updates the doxygen documentation, and copies it into the appropriate place
# in the gh-pages branch.

set -e

tempdir=`mktemp -d`
branch=`git rev-parse --abbrev-ref HEAD`

cp -r /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/doc/html/ ${tempdir}

git stash
git checkout gh-pages

rm -rf /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/assets/doxygen
mkdir /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/assets/doxygen
cp -r ${tempdir}/html/* /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/assets/doxygen/

rm -rf ${tempdir}

git commit /home/xubuntu/src/CPlusPlus20ForProgrammers-master/examples/libraries/cereal-1.3.0/assets/doxygen

git checkout ${branch}
git stash apply
