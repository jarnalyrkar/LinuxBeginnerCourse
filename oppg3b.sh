#!/bin/bash
# $X = -f to only see files, -d for directories, -L for symbolic links

clear

# Assigns current folder
if [[ ${#1} -le 2 ]]
then folder=$(pwd)
    else folder=$1
fi

# Check if $folder is valid
if [[ -d $folder ]]
then echo "Valid folder";
    else echo "Not a valid folder";
fi

# Just adds slash and asterisk to the folder path
folder="$folder/*"

# Prints which directory is in use
echo "Items in $folder will be counted.";

# Sets variables
folders=0
files=0
symlinks=0

usage="Usage: ./count.sh [filepath] [args] (args may be -d, -L, -f, -h)";

for item in $folder
do
    #If directory, and not symbolic link
    if [[ -d "$item" && ! -L "$item" ]]
        then ((folders++))
    fi
    # if symbolic link - any
    if [[ -L "$item" ]]
        then ((symlinks++))
    fi
    # If not directory, and not symbolic link
    if [[ ! -d "$item" && ! -L "$item" ]]
        then ((files++))
    fi
done

# If no args were given; pwd folder, print all options.
if [[ ${#1} == 0 ]]
    then echo "Folders: $folders";
        echo "Symbolic Links: $symlinks";
        echo "Files: $files";
fi

# Print statements:
while [[ $# -gt 0 ]] ;
do
    if [[ $1 != $(pwd) ]]
        then opt="$1";
        else opt="$2";
    fi
    shift;
    case "$opt" in
        "-d" )
            echo "Folders: $folders";;
        "-L" )
            echo "Symbolic Links: $symlinks";;
        "-f" )
            echo "Files: $files";;
        "-h" )
            echo $usage;;
        "-*" )
            echo "Invalid Option."; exit 1;;
    esac
done
