#!/bin/bash  
  
# Create empty github repos  
cat ~/replist | while read repository_name || [[ -n $repository_name ]];
do  
cd $repository_name
cp -a /home/minato/projects/$repository_name/. /home/minato/Repos/$repository_name/
git add .
git commit -m "updated $repository_name"
git branch -M main
git push -u origin main
cd ..
echo "$repository_name has been updated "
done