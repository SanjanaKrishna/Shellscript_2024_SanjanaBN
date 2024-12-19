#!/bin/bash

#  value of the PATH environment variable
echo "Value of PATH: $PATH"

# value of the HOME environment variable
echo "Value of HOME: $HOME"

# value of the USER environment variable
echo "Value of USER: $USER"

#e value of the LANG environment variable
echo "Value of LANG: $LANG"

#Set a new value for the LANG environment variable
export LANG="en_US.UTF-8"

# Print the new value of the LANG environment variable
echo "New value of LANG: $LANG"

# Set a new environment variable called MY_VAR
export MY_VAR="Hello World"

# Print the value of the MY_VAR environment variable
echo "Value of MY_VAR: $MY_VAR"

# Unset the MY_VAR environment variable
unset MY_VAR

# Print the value of the MY_VAR environment variable after unsetting
echo "Value of MY_VAR after unsetting: $MY_VAR"
