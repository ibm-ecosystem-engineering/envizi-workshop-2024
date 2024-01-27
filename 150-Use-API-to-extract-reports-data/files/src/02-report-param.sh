#!/bin/bash

source ./config.sh

echo "Envizi API - Downloading Report Parameters :"
echo "========================================== "


downloadReportParam() {
    OUTPUT_FOLDER=$1
    REPORT_ID=$2
    REPORT_NAME=$3

    API_USER_PASSWORD="$API_USER:$API_PASSWORD"
    API_URL="https://$API_REGION$API_SUFFIX/meta/reports/$REPORT_NAME"
    OUTPUT_FILE="$OUTPUT_FOLDER/$REPORT_NAME-$REPORT_ID.json"

    echo "Downloading Report Param : $OUTPUT_FILE"
    #curl -u $API_USER_PASSWORD "$API_URL"  > $OUTPUT_FILE
    curl "$API_URL" --header "Authorization: Bearer $API_ACCESS_TOKEN"  > $OUTPUT_FILE    
}

CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
OUTPUT_FOLDER=output/$CURRENT_TIME

mkdir -p $OUTPUT_FOLDER

downloadReportParam "$OUTPUT_FOLDER" "1481" "_Envizi-AccountItemsAndCostAudit"
downloadReportParam "$OUTPUT_FOLDER" "1837" "_Envizi-AccountItemsAudit"
# downloadReportParam "$OUTPUT_FOLDER" "1521" "_Envizi-AccountsDataVarianceExceptions"
# downloadReportParam "$OUTPUT_FOLDER" "1477" "_Envizi-AccountStyleDataExtract"
# downloadReportParam "$OUTPUT_FOLDER" "1782" "_Envizi-BillCheckingMissingandOverlapping"
# downloadReportParam "$OUTPUT_FOLDER" "1725" "_Envizi-BillCheckingVarianceAndMeterComparison"
# downloadReportParam "$OUTPUT_FOLDER" "1560" "_Envizi-ClassificationGroupVerification"
# downloadReportParam "$OUTPUT_FOLDER" "1660" "_Envizi-DashboardUsageAudit"
# downloadReportParam "$OUTPUT_FOLDER" "1498" "_Envizi-DataCompletenessUsingClosedOnDates"
# downloadReportParam "$OUTPUT_FOLDER" "1499" "_Envizi-DataCompletenessUsingOpenedOnDates"
# downloadReportParam "$OUTPUT_FOLDER" "1523" "_Envizi-EnergyStarRatings"
# downloadReportParam "$OUTPUT_FOLDER" "1655" "_Envizi-ExportSurveyResponses"
# downloadReportParam "$OUTPUT_FOLDER" "1713" "_Envizi-ExtractForAccounts"
# downloadReportParam "$OUTPUT_FOLDER" "1522" "_Envizi-ExtractForContacts"
# downloadReportParam "$OUTPUT_FOLDER" "1664" "_Envizi-ExtractForLocations"
# downloadReportParam "$OUTPUT_FOLDER" "1449" "_Envizi-ExtractForLocationWeatherData"
# downloadReportParam "$OUTPUT_FOLDER" "1665" "_Envizi-ExtractForSurveyResponsesAndAttributes"
# downloadReportParam "$OUTPUT_FOLDER" "1874" "_Envizi-IssueDetailsCBA"
# downloadReportParam "$OUTPUT_FOLDER" "1813" "_Envizi-LocationMonthlyDataCurrentandPreviousYear"
# downloadReportParam "$OUTPUT_FOLDER" "1538" "_Envizi-Locations_GetViewable"
# downloadReportParam "$OUTPUT_FOLDER" "1450" "_Envizi-LocationsDetails"
# downloadReportParam "$OUTPUT_FOLDER" "1753" "_Envizi-MarketBasedEmissions"
# downloadReportParam "$OUTPUT_FOLDER" "1890" "_Envizi-MissingDataDateRange"
# downloadReportParam "$OUTPUT_FOLDER" "1529" "_Envizi-MonthlyActualvsExpectedWeatherNormalize"
# downloadReportParam "$OUTPUT_FOLDER" "1444" "_Envizi-MonthlyDataSummary"
# downloadReportParam "$OUTPUT_FOLDER" "1822" "_Envizi-MonthlyDataSummary_CDP"
# downloadReportParam "$OUTPUT_FOLDER" "1482" "_Envizi-MonthlyDataSummaryAllMeasures"
# downloadReportParam "$OUTPUT_FOLDER" "1891" "_Envizi-NGERsActivityDatabyState-EERS"
# downloadReportParam "$OUTPUT_FOLDER" "1537" "_Envizi-PBIEmbeddedCache"
# downloadReportParam "$OUTPUT_FOLDER" "1447" "_Envizi-RawDataExtract"
# downloadReportParam "$OUTPUT_FOLDER" "1661" "_Envizi-RecentLogins"
# downloadReportParam "$OUTPUT_FOLDER" "1846" "_Envizi-RecordsAndCostAudit"
# downloadReportParam "$OUTPUT_FOLDER" "1561" "_Envizi-ReportUsageDetails"
# downloadReportParam "$OUTPUT_FOLDER" "1478" "_Envizi-SetupAccounts"
# downloadReportParam "$OUTPUT_FOLDER" "1530" "_Envizi-SetupGroups"
# downloadReportParam "$OUTPUT_FOLDER" "1570" "_Envizi-SetupIssues"
# downloadReportParam "$OUTPUT_FOLDER" "1524" "_Envizi-SetupLocationRatings"
# downloadReportParam "$OUTPUT_FOLDER" "1479" "_Envizi-SetupLocations"
# downloadReportParam "$OUTPUT_FOLDER" "1543" "_Envizi-SetupMeterAlertRules"
# downloadReportParam "$OUTPUT_FOLDER" "1520" "_Envizi-SetupMeters"
# downloadReportParam "$OUTPUT_FOLDER" "1654" "_Envizi-SetupTariffs"
# downloadReportParam "$OUTPUT_FOLDER" "1543" "_Envizi-WeatherStationReview"
# downloadReportParam "$OUTPUT_FOLDER" "1481" "_Envizi-IssueDetails"
# downloadReportParam "$OUTPUT_FOLDER" "1467" "_Envizi-EquipmentMonthlyMetrics"
# downloadReportParam "$OUTPUT_FOLDER" "1437" "_Envizi-IssueSummary"
# downloadReportParam "$OUTPUT_FOLDER" "1693" "_Envizi-GRESBExtractforLocationRatings"
# downloadReportParam "$OUTPUT_FOLDER" "1668" "_Envizi-MonthlyDataSummary_GRESB"
# downloadReportParam "$OUTPUT_FOLDER" "1496" "_Envizi-ElectricityIntervalDataExtract"
# downloadReportParam "$OUTPUT_FOLDER" "1727" "_Envizi-NABERSIndicativeRatingsbyLocation"
# downloadReportParam "$OUTPUT_FOLDER" "1540" "_Envizi-NABERSIndicativeRatingsGeneration"
# downloadReportParam "$OUTPUT_FOLDER" "1491" "_Envizi-ExtractforPrograms"
# downloadReportParam "$OUTPUT_FOLDER" "1532" "_Envizi-ExtractForLocations-Solar"
# downloadReportParam "$OUTPUT_FOLDER" "1490" "_Envizi-SolarPerformanceAndPayback"
# downloadReportParam "$OUTPUT_FOLDER" "1527" "_Envizi-ActualvsTargetandBudget"
# downloadReportParam "$OUTPUT_FOLDER" "1446" "_Envizi-SetupTargetData"

echo "\n\n "



