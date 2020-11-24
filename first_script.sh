#!/bin/bash

# ^^^ This command needs to be on the first line of the file
# Points to thte path to the interpreter that should be used to run the rest of the lines existing in the file
# Not even an empty line can be before it

echo "Hello world!" # echo prints what you write after it to the screen

# Set a variable
myVariable=Hello

# Read a variable using the <$> symbol
echo $myVariable

# There are some special variables i.e. the name of the script, the arguments fed to the script and the name of the user running the script

echo "name of script: " $0
echo "user running script: " $USER
echo "first argument fed to the script: " $1

# Put command in brackets to assign output to a variable
lsCommand=$(ls)
echo "ls returns: " $lsCommand

# Single quotes vs double quotes
singleVariable='Hello, $USER!' 
doubleVariable="HEllo, $USER!"

echo $singleVariable
echo $doubleVariable

