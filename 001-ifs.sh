

# text="Banana Apple Orange"
# ne

# for word in $text
# do
# echo "word:$word"
# do

# ------------------
# text="Rajesh,Ramesh,Mahesh,Suresh"
# IFS=","

# for names in $text
# do
#     echo "Names $names"
# done

# -----------------------

# this not run

# colors="red|green|blue|yellow"
# OLDIFS=$IFS
# IFS="|"
# for color in $colors
# do
#   echo "Color: $color"
# done
# IFS=$OLDIFS

#!/bin/bash

SOURCE_DIR=\home\ec2-user\logs

R="\e[31m" # color red
G="\e[32m" # color green
N="\e[0m"  # color normal
Y="\e[33m" # clor yellow


if [ -d $SOURCE_DIR ]
then 
    echo -e "$SOURCE_DIR  $G Exists.......$N"
else
    echo -e "$SOURCE_DIR $R does not Exist....$N"
    exit 1
fi

# # Actual path 'find /home/ec2-user/logs -name "*.log" -mtime +4

# # FILES=$(find /home/ec2-user/logs -name "*.log" -mtime +4)

# FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +4)
# echo "Files: $FILES"

# while IFS= read -r file
# do
#      echo "Deleting file: $file"
# done <<< $FILES



FILES=$(find ${SOURCE_DIR} -name "*.log" -mtime +4)
echo "Files: $FILES"

# dont use line, it is reserverd word
while IFS= read -r file #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /
do
    echo "Deleting file: $file"
    #rm -rf $file
done <<< $FILES



