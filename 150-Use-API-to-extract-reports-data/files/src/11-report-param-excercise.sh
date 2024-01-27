#!/bin/bash

source ./config.sh

echo "Envizi API - Downloading Report Parameters :"
echo "========================================== "


downloadReportParam() {
    REPORT_NAME=$1

    CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
    OUTPUT_FOLDER=output/$CURRENT_TIME

    mkdir -p $OUTPUT_FOLDER

    API_USER_PASSWORD="$API_USER:$API_PASSWORD"
    API_URL="https://$API_REGION$API_SUFFIX/meta/reports/$REPORT_NAME"
    OUTPUT_FILE="$OUTPUT_FOLDER/Params-$REPORT_NAME.json"

    echo "Downloading Report Param : $OUTPUT_FILE"
    #curl -u $API_USER_PASSWORD "$API_URL"  > $OUTPUT_FILE
    curl "$API_URL" --header "Authorization: Bearer $API_ACCESS_TOKEN"  > $OUTPUT_FILE    
}

REPORT_NAME="ABCD"

downloadReportParam $REPORT_NAME

