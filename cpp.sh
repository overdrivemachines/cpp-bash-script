#!/bin/bash

# Make sure there is one argument
if [ $# -lt 1 ]; then
  echo 1>&2 "$0: not enough arguments"
  exit 2
fi

project_name=$1
echo "Creating C++ Project $project_name"

# Make directory
mkdir $project_name


# Save .gitignore file
cd $project_name
wget https://raw.githubusercontent.com/overdrivemachines/cpp-bash-script/main/.gitignore

# Append executable name at the end of .gitignore file
echo "
$project_name" >> .gitignore

# Create README
echo "# $project_name" >> README.md

# Download CPP file
wget https://raw.githubusercontent.com/overdrivemachines/cpp-bash-script/main/main.cpp
mv main.cpp $project_name.cpp


# Download Makefile
wget https://raw.githubusercontent.com/overdrivemachines/cpp-bash-script/main/Makefile
sed -i "s/main/$project_name/g" Makefile

# Initialize git
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin git@github.com:overdrivemachines/$project_name.git
git push -u origin main