#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}
ROOIUSER=$(id -u)

if [ $ROOIUSER -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

if [ $# -lt 2 ]; then 
    echo " $R usage is sudo sh script.sh <soure_path> <Destination_path? <days> $N"
fi

#check siurce directory is exists or not
if [ -d $SOURCE_DIR ]; then
    echo -e "$G Source $SOURCE_DIR is exists $N"
else
    echo -e "$R Source $SOURCE_DIR is not exists $N"
    exit 1
fi

#check siurce directory is exists or not
if [ -d $DEST_DIR ]; then
    echo -e "$G Destination $DEST_DIR is exists $N"
else
    echo -e "$R Destination $DEST_DIR is not exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIR -type f -iname "*.log" -mtime +${DAYS})

#taking backup in DEStination directory

if [ ! -z "${FILES}" ]; then
    echo -e "$B Files found for archiving $N"
    TIME_STAMP=$(date +%F-%T)
    ZIP_FILENAME=$DEST_DIR/app_logs_${TIME_STAMP}.zip
    echo "Zip file name : $ZIP_FILENAME"

    find $SOURCE_DIR -type f -iname "*.log" -mtime +${DAYS} | zip -@ -j "$ZIP_FILENAME"

    ##check archiving is done or not

    if [ -f $ZIP_FILENAME ]; then
        echo -e "archiving....$R SUCCESS $N"

        while IFS= read -r file; do
              
              echo -e "$(rm -rf ${SOURCE_DIR}/$file) is $R deleted $N"

        done <<< "${FILES}"
    else
        echo -e "Archiving....$R FAILED $N"
    fi
else 
    echo -e "$R No files found for archiving $N"

fi



