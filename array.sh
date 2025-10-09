#!/bin/bash

count=$1

# verify input <= 26
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -lt 1 ] || [ "$count" -gt 26 ]; then
  exit 1
fi

# defined name for folders
folders_created=()
for ((i=0; i<count; i++)); do
  letter=$(printf "\\$(printf '%03o' $((97 + i)))")  # genera a-z
  folder="folder_${letter}"
  mkdir -p "$folder"
  folders_created+=("$folder")
done

echo "${count} folder(s) created: ${folders_created[*]}" # output