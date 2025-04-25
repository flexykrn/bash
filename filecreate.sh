#1/bin/bash

read -p "enter the file name: " file
read -p "enter the content of the file:  " content

echo "$content" > "$file"

echo "written to $file"
