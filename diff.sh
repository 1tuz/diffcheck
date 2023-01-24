#!/bin/bash

# Take first link as input
echo "Enter first link:"
read link1

# Take second link as input
echo "Enter second link:"
read link2

# Use curl to retrieve contents of both links
curl -s $link1 > link1.json
curl -s $link2 > link2.json

# Compare the difference between the two files using diff
diffchecker link1.json link2.json

# Print message indicating the difference has been saved
echo "Difference saved in diff.json"

