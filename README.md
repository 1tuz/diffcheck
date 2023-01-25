# Diffcheck
This script compares the responses from two URLs using curl and diffchecker. It can be used with or without command line arguments, and allows the user to input URLs if none are provided.

To use the script, first make sure you have curl and diffchecker installed on your system. Then, copy and paste the script into a file with a .sh extension, and make it executable using chmod +x <filename>.sh.

There are three ways to use the script:

1. Without arguments:

```./diff.sh```

This will prompt the user to enter the first and second URLs, which will be compared.

2. With one argument:

`./<filename>.sh <URL>`
  
This will prompt the user to enter the second URL, and use the provided URL as the first.

3. With two arguments:

```./diff.sh <URL1> <URL2>```

The script will then make curl requests to the provided URLs, and compare the responses using diffchecker. The output of the comparison will be displayed, and uploaded to diffchecker if there is no error with the url provided.

If one of the URLs is not valid, the script will display an error message and exit with status code 1.
