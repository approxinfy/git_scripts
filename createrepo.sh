#!/bin/bash  
  
# Create empty github repo  
  
echo "Enter the repository name: "  
read repository_name  
mkdir $repository_name
cd $repository_name
echo "# $repository_name" >> README.md
git init
git add README.md
git commit -m "created $repository_name"
git branch -M main
git remote add origin git@github.com:approxinfy/$repository_name.git
git push -u origin main
cd ..
echo "$repository_name has been created "