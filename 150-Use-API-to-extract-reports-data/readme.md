# Using API to retrive the reports data from Envizi

The objective of this lab is use API to retrive the reports data from Envizi.

# 1. Identify API URL

1. Indentify the API URL based on the user.

- For most Australia, New Zealand and ASEAN users - https://auapi.envizi.com/api
- For most US and Canada users - https://usapi.envizi.com/api
- For most UK, Europe and South African users - https://ukapi.envizi.com/api
- For most most Middle East users - https://meapi.envizi.com/api

# 2. Generate API Token

1. Login with the API user `xxxxx_apiuser@ibmapac.com` that we created in the lab  [Creating Contacts and Users](../161-Creating-Contacts-and-Users-using-ui)

2. Generate the API access Token using the instructions given [here](../202-api-access-token)

3. Copy and save the access token into your local file system which will be leveraged in the following excercises.

# 3. Excercise

Do all the below exercises. Refer the content [here](../153-Use-API-to-extract-reports-data-session) for your help.

#### Excercise 1

Retrive the `Report Names` using the Curl or Postman.

#### Excercise 2

1. Retrieve all the `locations` within the `G12 - IN Bank - Corporate offices` group for the last 12 months and using the API.

You need to retrive the report parameters first and then retrive the report data.

#### Excercise 3

1. Retrieve all the `accounts` within the `IN Bank - APAC Corp Offices` group for the last 6 months

You need to retrive the report parameters first and then retrive the report data.

#### Excercise 4

1. Retrieve all the `MonthlyDataSummary` within the `IN Bank - APAC Corp Offices` group for the last 6 months

You need to retrive the report parameters first and then retrive the report data.

#### Excercise 5

1. Retrieve all the `MissingDataDateRange` within the `IN Bank - APAC Corp Offices` group for the last 12 months

You need to retrive the report parameters first and then retrive the report data.
