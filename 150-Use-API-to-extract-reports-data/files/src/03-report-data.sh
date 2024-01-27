#!/bin/bash

source ./config.sh

echo "Envizi API - Downloading Report Data :"
echo "====================================== "

downloadReportData() {
    OUTPUT_FOLDER=$1
    REPORT_ID=$2
    REPORT_NAME=$3

    API_USER_PASSWORD="$API_USER:$API_PASSWORD"
    API_URL="https://$API_REGION$API_SUFFIX/data/$REPORT_NAME"
    OUTPUT_FILE="$OUTPUT_FOLDER/$REPORT_NAME-$REPORT_ID.json"

    echo "Downloading Report Data : $OUTPUT_FILE"
    #curl -u $API_USER_PASSWORD "$API_URL"  > $OUTPUT_FILE
    curl "$API_URL" --header "Authorization: Bearer $API_ACCESS_TOKEN"  > $OUTPUT_FILE    
}


CURRENT_TIME=$(date "+%Y%m%d%H%M%S")
OUTPUT_FOLDER=output/$CURRENT_TIME

mkdir $OUTPUT_FOLDER

downloadReportData "$OUTPUT_FOLDER" "1481" "_Envizi-AccountItemsAndCostAudit"
downloadReportData "$OUTPUT_FOLDER" "1837" "_Envizi-AccountItemsAudit"
# downloadReportData "$OUTPUT_FOLDER" "1521" "_Envizi-AccountsDataVarianceExceptions"
# downloadReportData "$OUTPUT_FOLDER" "1477" "_Envizi-AccountStyleDataExtract"
# downloadReportData "$OUTPUT_FOLDER" "1782" "_Envizi-BillCheckingMissingandOverlapping"
# downloadReportData "$OUTPUT_FOLDER" "1725" "_Envizi-BillCheckingVarianceAndMeterComparison"
# downloadReportData "$OUTPUT_FOLDER" "1560" "_Envizi-ClassificationGroupVerification"
# downloadReportData "$OUTPUT_FOLDER" "1660" "_Envizi-DashboardUsageAudit"
# downloadReportData "$OUTPUT_FOLDER" "1498" "_Envizi-DataCompletenessUsingClosedOnDates"
# downloadReportData "$OUTPUT_FOLDER" "1499" "_Envizi-DataCompletenessUsingOpenedOnDates"
# downloadReportData "$OUTPUT_FOLDER" "1523" "_Envizi-EnergyStarRatings"
# downloadReportData "$OUTPUT_FOLDER" "1655" "_Envizi-ExportSurveyResponses"
# downloadReportData "$OUTPUT_FOLDER" "1713" "_Envizi-ExtractForAccounts"
# downloadReportData "$OUTPUT_FOLDER" "1522" "_Envizi-ExtractForContacts"
# downloadReportData "$OUTPUT_FOLDER" "1664" "_Envizi-ExtractForLocations"
# downloadReportData "$OUTPUT_FOLDER" "1449" "_Envizi-ExtractForLocationWeatherData"
# downloadReportData "$OUTPUT_FOLDER" "1665" "_Envizi-ExtractForSurveyResponsesAndAttributes"
# downloadReportData "$OUTPUT_FOLDER" "1874" "_Envizi-IssueDetailsCBA"
# downloadReportData "$OUTPUT_FOLDER" "1813" "_Envizi-LocationMonthlyDataCurrentandPreviousYear"
# downloadReportData "$OUTPUT_FOLDER" "1538" "_Envizi-Locations_GetViewable"
# downloadReportData "$OUTPUT_FOLDER" "1450" "_Envizi-LocationsDetails"
# downloadReportData "$OUTPUT_FOLDER" "1753" "_Envizi-MarketBasedEmissions"
# downloadReportData "$OUTPUT_FOLDER" "1890" "_Envizi-MissingDataDateRange"
# downloadReportData "$OUTPUT_FOLDER" "1529" "_Envizi-MonthlyActualvsExpectedWeatherNormalize"
# downloadReportData "$OUTPUT_FOLDER" "1444" "_Envizi-MonthlyDataSummary"
# downloadReportData "$OUTPUT_FOLDER" "1822" "_Envizi-MonthlyDataSummary_CDP"
# downloadReportData "$OUTPUT_FOLDER" "1482" "_Envizi-MonthlyDataSummaryAllMeasures"
# downloadReportData "$OUTPUT_FOLDER" "1891" "_Envizi-NGERsActivityDatabyState-EERS"
# downloadReportData "$OUTPUT_FOLDER" "1537" "_Envizi-PBIEmbeddedCache"
# downloadReportData "$OUTPUT_FOLDER" "1447" "_Envizi-RawDataExtract"
# downloadReportData "$OUTPUT_FOLDER" "1661" "_Envizi-RecentLogins"
# downloadReportData "$OUTPUT_FOLDER" "1846" "_Envizi-RecordsAndCostAudit"
# downloadReportData "$OUTPUT_FOLDER" "1561" "_Envizi-ReportUsageDetails"
# downloadReportData "$OUTPUT_FOLDER" "1478" "_Envizi-SetupAccounts"
# downloadReportData "$OUTPUT_FOLDER" "1530" "_Envizi-SetupGroups"
# downloadReportData "$OUTPUT_FOLDER" "1570" "_Envizi-SetupIssues"
# downloadReportData "$OUTPUT_FOLDER" "1524" "_Envizi-SetupLocationRatings"
# downloadReportData "$OUTPUT_FOLDER" "1479" "_Envizi-SetupLocations"
# downloadReportData "$OUTPUT_FOLDER" "1543" "_Envizi-SetupMeterAlertRules"
# downloadReportData "$OUTPUT_FOLDER" "1520" "_Envizi-SetupMeters"
# downloadReportData "$OUTPUT_FOLDER" "1654" "_Envizi-SetupTariffs"
# downloadReportData "$OUTPUT_FOLDER" "1543" "_Envizi-WeatherStationReview"
# downloadReportData "$OUTPUT_FOLDER" "1481" "_Envizi-IssueDetails"
# downloadReportData "$OUTPUT_FOLDER" "1467" "_Envizi-EquipmentMonthlyMetrics"
# downloadReportData "$OUTPUT_FOLDER" "1437" "_Envizi-IssueSummary"
# downloadReportData "$OUTPUT_FOLDER" "1693" "_Envizi-GRESBExtractforLocationRatings"
# downloadReportData "$OUTPUT_FOLDER" "1668" "_Envizi-MonthlyDataSummary_GRESB"
# downloadReportData "$OUTPUT_FOLDER" "1496" "_Envizi-ElectricityIntervalDataExtract"
# downloadReportData "$OUTPUT_FOLDER" "1727" "_Envizi-NABERSIndicativeRatingsbyLocation"
# downloadReportData "$OUTPUT_FOLDER" "1540" "_Envizi-NABERSIndicativeRatingsGeneration"
# downloadReportData "$OUTPUT_FOLDER" "1491" "_Envizi-ExtractforPrograms"
# downloadReportData "$OUTPUT_FOLDER" "1532" "_Envizi-ExtractForLocations-Solar"
# downloadReportData "$OUTPUT_FOLDER" "1490" "_Envizi-SolarPerformanceAndPayback"
# downloadReportData "$OUTPUT_FOLDER" "1527" "_Envizi-ActualvsTargetandBudget"
# downloadReportData "$OUTPUT_FOLDER" "1446" "_Envizi-SetupTargetData"

echo "\n\n "



