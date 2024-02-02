#!/bin/bash

source ./config.sh

echo "Envizi API - Downloading Report Data :"
echo "====================================== "

downloadReportData() {
    URL_SUFFIX=$1

    CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
    OUTPUT_FOLDER=output/$CURRENT_TIME
    mkdir $OUTPUT_FOLDER

    API_USER_PASSWORD="$API_USER:$API_PASSWORD"
    API_URL="https://$API_REGION$API_SUFFIX/data/$URL_SUFFIX"
    OUTPUT_FILE="$OUTPUT_FOLDER/result.json"

    echo "Downloading Report Data : $OUTPUT_FILE"
    #curl -u $API_USER_PASSWORD "$API_URL"  > $OUTPUT_FILE
    curl "$API_URL" --header "Authorization: Bearer $API_ACCESS_TOKEN"  > $OUTPUT_FILE    
}


URL_SUFFIX="XYZ"

downloadReportData $URL_SUFFIX




