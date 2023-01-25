#!/bin/bash

trap 'echo "  Interrupted. Exiting..."; exit 1' INT

if [ $# -eq 1 ]
then
    read -p "Enter the second URL: " url2
    url1=${1#"curl "}
    url2=${url2#"curl "}
elif [ $# -eq 0 ]
then
    read -p "Enter the first URL: " url1
    url1=${url1#"curl "}
    read -p "Enter the second URL: " url2
    url2=${url2#"curl "}
else
    url1=${1#"curl "}
    url2=${2#"curl "}
fi

# Make the first request
response1=$(curl -s "$url1")

# Make the second request
response2=$(curl -s "$url2")

if [ -z "$response1" ] || [ -z "$response2" ]
then
    echo "Error: One of the URLs is not valid"
    exit 1
else
    # Compare the responses and store the output in a variable
    diff_output=$(npx diffchecker "$response1" "$response2")

    # Output the diff_output to check it
    echo $diff_output

    #Upload the output to diffchecker
    npx diffchecker -u $diff_output
fi
