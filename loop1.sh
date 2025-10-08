#!/bin/bash

# Put your code here
py="$1" #first argument

copy=${py}

len=${#copy}
for((i=$len-1;i>=0;i--)); do rev="$rev${copy:$i:1}"; done #reverse argument

#echo "var: $py, rev: $rev" #check reversed argument

echo "${rev~~}" # Reverse the case of all characters