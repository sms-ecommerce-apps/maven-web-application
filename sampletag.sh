#! /bin/bash

echo "Verifying the latest tag checkout"
sshpass -p 'B@ngalore123' ssh -o StrictHostKeyChecking=no -l git fetch https://gitlab.smartfren.com/sinarmasdigital-tio/mysf/live --tags ;
latesttag=$(git describe --tags `git tag --sort=-creatordate | head -n 1`) && branch=preprod-v3n && echo \’${branch}\’ ;
echo ${latesttag}
git checkout $latesttag -b $branch
echo "Latest tag got checkout"

