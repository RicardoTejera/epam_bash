#!/bin/bash

# Verifica que se pase un argumento
if [ -z "$1" ]; then
  echo "Usage: $0 <number_of_folders>"
  exit 1
fi

count=$1

# Verifica que sea un número válido y menor o igual a 26
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -lt 1 ] || [ "$count" -gt 26 ]; then
  echo "Please provide a number between 1 and 26."
  exit 1
fi

# Crea los folders con nombres folder_a, folder_b, etc.
folders_created=()
for ((i=0; i<count; i++)); do
  letter=$(printf "\\$(printf '%03o' $((97 + i)))")  # genera a-z
  folder="folder_${letter}"
  mkdir -p "$folder"
  folders_created+=("$folder")
done

# Muestra el resultado
echo "${count} folder(s) created: ${folders_created[*]}"
