# Using API to retrive the reports data from Envizi - Answers

The parameter values that we have mentioned here is based on the Envizi Instance that we have used. It could vary based on your instance.

### Excercise 1

#### Retrive the `Report Names` using the Curl or Postman.

1. Use this API
```
https://usapi.envizi.com/api/meta
```

### Excercise 2

#### Retrieve all the `locations` within the `IN Bank - Corporate offices` group using the API.

1. Get the report name for `location` using this API
```
https://usapi.envizi.com/api/meta
```

You could find this report name.
```
            "name": "_Envizi-SetupLocations"
```

2. Get the all possible parameters for the location report.

```
https://usapi.envizi.com/api/meta/reports/_Envizi-SetupLocations
```

3. Identify the `IN Bank - Corporate offices` group-id from the above parameters result

The identified value would be
```
                    {
                        "name": "IN Bank > IN Bank - Corporate offices",
                        "value": "17008188"
                    },
```

4. Retrive the locations

```
https://usapi.envizi.com/api/data/_Envizi-SetupLocations?Group_Id=17008188
```


### Excercise 3

#### Retrieve all the `accounts` within the `IN Bank - APAC Corp Offices` group using the API.


1. Get the report name for `accounts` using this API
```
https://usapi.envizi.com/api/meta
```

You could find this report name.
```
            "name": "_Envizi-ExtractForAccounts"
```

2. Get the all possible parameters for the Accounts report.

```
https://usapi.envizi.com/api/meta/reports/_Envizi-ExtractForAccounts
```

3. Identify the `IN Bank - APAC Corp Offices` group-id from the above parameters result

The identified value would be
```
                    {
                        "name": "IN Bank > IN Bank - Corporate offices > IN Bank - APAC Corp Offices",
                        "value": "17017100"
                    },
```

4. Retrive the Accounts

```
https://usapi.envizi.com/api/data/_Envizi-ExtractForAccounts?Group_Id=17017100
```

### Excercise 4

#### Retrieve all the `MonthlyDataSummary` within the `IN Bank - APAC Corp Offices` group for the last 6 months


1. Get the report name for `MonthlyDataSummary` using this API
```
https://usapi.envizi.com/api/meta
```

You could find this report name.
```
            "name": "_Envizi-MonthlyDataSummary"
```

2. Get the all possible parameters for the MonthlyDataSummary report

```
https://usapi.envizi.com/api/meta/reports/_Envizi-MonthlyDataSummary
```

3. Identify the `IN Bank - APAC Corp Offices` group-id.

We can take the value from the above excercise.

The identified value would be
```
                    {
                        "name": "IN Bank > IN Bank - Corporate offices > IN Bank - APAC Corp Offices",
                        "value": "17017100"
                    },
```

4. Retrive the MonthlyDataSummary

```
https://usapi.envizi.com/api/data/_Envizi-MonthlyDataSummary?Group_Id=17017100&Period=6&End_Period=2024/04/30
```

### Excercise 5

#### Retrieve all the `MissingDataDateRange` within the `IN Bank - APAC Corp Offices` group for the last 12 months


1. Get the report name for `MissingDataDateRange` using this API
```
https://usapi.envizi.com/api/meta
```

The response is 
```
            "name": "_Envizi-MissingDataDateRange"
```

2. Get the all possible parameters for the MissingDataDateRange report

```
https://usapi.envizi.com/api/meta/reports/_Envizi-MissingDataDateRange
```

3. Identify the `IN Bank - APAC Corp Offices` group-id.

We can take the value from the above excercise.

The identified value would be
```
                    {
                        "name": "IN Bank > IN Bank - Corporate offices > IN Bank - APAC Corp Offices",
                        "value": "17017100"
                    },
```

4. Retrive the MissingDataDateRange

```
https://usapi.envizi.com/api/data/_Envizi-MissingDataDateRange?Group_Id=17017100&Period=12&End_Period=2024/04/30
```


