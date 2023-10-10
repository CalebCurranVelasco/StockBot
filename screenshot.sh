#!/bin/bash

if !command -v scrot &> /dev/null;
then
	echo "scrot is not installed"
	exit 1
fi

output_dir="$HOME/Desktop/StockBot/Screenshots"
numScreenshots=6

for ((i=1; i<=numScreenshots; i++)); do

	output_file="screenshot-$(date +'%Y-%m-%d-%H-%M-%S' ).png"

	scrot "$output_dir/output_file"
	sleep 10
done

echo "Screenshots saved as $output_file"
