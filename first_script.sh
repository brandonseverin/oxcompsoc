#/bin/bash

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
singleVariable='Hello, $USER!' # assign to variable exactly what is in quotes
doubleVariable="HEllo, $USER!" # perform substitutions before assigning to variable

echo $singleVariable
echo $doubleVariable

## Input
#echo Hi! What is your name?
#read name
#echo Nice, to meet you, $name!
#read -p "What is your username?" username
#read -sp "What is you password?" userpass

# More than one input at a time
#read -p "What are your friends' names?" friend1 friend2 friend3
#echo "Your friends are $friend1, $friend2 and $friend3"

# Let command
let var1=1+2 #var 1 now contains 3
let "var2 = 1 + 2" #var2 now contains 3
let var1++ #var1 now contains 4 (++)/(--) are shortcuts for +1/-1
let "var3 = $var1 + $var2" #var3 now contains 7
let "var4 = $var3 +$1" #var4 now contains 7 and the argument is provoded by the user

#Arithmetic:
# Expr works in the same way as let but prints the result insread of assigning it to a variable
# quotes not needed
# you must add spaces between the operands and the operators

expr 1+2
expr 1 + 2 
var5=$(expr 1 + 2)

# Double parentheses
var6=$((1 + 2)) # contains 3
var7=$((1+2)) # var6 contains 3
var8=$(($var6 + $var7)) # var8 now contains 6
((var8--)) # var8 now contains 5

# If statements
if [ $1 = $RANDOM ] # N.B. SPACES are very important
then
	That is a weird coincidence!
fi

# Else if statements
if [ $RANDOM -gt $1 ]
then 
	echo Your number is smaller than the random one!
else 
	echo Your number is bigger than the random one!
fi

# Nested if statements
myvar1=3
myvar2=100
if [ $myvar1 -lt $1 ]
then
	echo Your number is larger than $myvar1!
	if [ $myvar2 -lt $1 ]
	then
		echo Your number is also larger than $myvar2!
	else
		echo Your number is smaller than $myvar2!
	fi
fi

# Elif statements
read -p "What is your age? " age
if [ $age -gt 18 ]
then
	echo You can go out!
elif [ $answer = yes ]
then 
	echo You can go out!
else 
	echo You cannot go out!
fi

# Combining conditions
if [ -d $1 ] && [ -d $1 ]
then
	echo Both test1 and test2 are directories
elif [ -d $1 ] || [-d $2 ]
then
	echo Only one of the files is a directory
else
	echo Neither of the files is a directory
fi


