#!/bin/bash

if [[ -n $1 ]]
then
  if [[ -n $2 ]]
  then
    echo "Error: you entered too many parameters"
  else
    regular="^[-+]?[0-9]+([.][0-9]+)?$"
    if [[ $1 =~ $regular ]]
    then
      echo "Error: You did not enter text"
    else
      echo $1
    fi
fi
else
echo "No parameters found"
fi
