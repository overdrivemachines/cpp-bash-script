#!/bin/bash

project_name=$1
echo "Creating C++ Project $project_name"

# Make directory
mkdir $project_name


# Save .gitignore file
cd $project_name
wget https://raw.githubusercontent.com/overdrivemachines/cpp-bash-script/main/.gitignore

# Append executable name at the end of .gitignore file
echo "$project_name" >> .gitignore

# Create README
echo "# $project_name" >> README.md

# Create CPP file

# Create Makefile