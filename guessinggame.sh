#!/usr/bin/env bash

# File: guessinggame.sh

# Set the number of files in the current diretory in a variable
files=$(ls |wc -l | egrep -o "[0-9]+")

# Give initial instructions to the user
echo -e "\nEnter the numer of files you think exists in the current directory:"

# Collect input from user and store in variable
read input

# Helper function for doing the logic work of deciding correct guessing
function verifyinput {
  
  # Loop over the input as long it is not equal to number of files
  while [[ $input != $files ]]
  do 
    if [[ $input < $files ]]
    then
      echo -e "\nYou entered a number lower than the number of existing files, guess again:"
      read input
    elif [[ $input > $files ]]
    then
      echo -e "\nYou entered a number higher than the number of existing files, guess again:"
      read input
    fi    
  done
  if [[ $input == $files ]]
  then 
    echo -e "\nYou entered the correct number of files which was: $files, CONGRATS!\n"
  fi
}

# Run the verification of the user input 
verifyinput
