#!/bin/bash
echo "provide the path of the file"
read the_path
for line in "$the_path"/*; do
	echo $line
done
