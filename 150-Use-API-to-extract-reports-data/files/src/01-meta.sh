#!/bin/bash

### API Key for the Cloud Object Storage bucket

source ./config.sh

echo "Envizi API - Downloading Report Names :"
echo "====================================== "

downloadMeta() {
    OUTPUT_FOLDER=$1

    API_URL="https://$API_REGION$API_SUFFIX/meta"
    OUTPUT_FILE="$OUTPUT_FOLDER/meta.json"

    echo "Downloading Report Names : $OUTPUT_FILE"
    #curl -u $USER_PASSWORD "$API_URL" > $OUTPUT_FILE    
    curl "$API_URL" --header "Authorization: Bearer $API_ACCESS_TOKEN"  > $OUTPUT_FILE
}

CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
OUTPUT_FOLDER=output/$CURRENT_TIME

mkdir -p $OUTPUT_FOLDER

downloadMeta "$OUTPUT_FOLDER"
