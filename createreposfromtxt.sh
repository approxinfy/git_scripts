#!/bin/bash  
  
# Create empty github repos  
cat ~/replist | while read repository_name || [[ -n $repository_name ]];
do  
mkdir $repository_name
cd $repository_name
cp -a /home/minato/projects/$repository_name/. /home/minato/Repos/$repository_name/
git init
git add .
git commit -m "created $repository_name"
git branch -M main
git remote add origin git@github.com:approxinfy/$repository_name.git
git push -u origin main
cd ..
echo "$repository_name has been updated "
done