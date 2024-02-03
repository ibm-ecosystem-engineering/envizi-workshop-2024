# Dataflow Automation

This document explains about Dataflow Automation and how to use how to use this to integrate data into Envizi.

## About Dataflow Automation

Data Flow Automation is IBM Envizi’s solution to simplify and streamline the process of provisioning data services and loading account data into Envizi.

<img src="images/image-11.png">

### Components

The three main components are:
- Data Services
- Data Pipelines
- Monitoring and Logging

<img src="images/img-21-datapipelines.png">

#### Data Services

Data Services are configured to provide endpoints for data to be delivered for ingestion into Envizi. Supported data services are: 
- Amazon S3 (Cloud Storage)
- Amazon Simple Email (Mailbox)
- Amazon Transfer (SFTP)
- IBM App Connect (Data ETL)
- NLP Service (Data ETL)


#### Data Pipelines

A Data Pipeline defines how a data file will be processed by Envizi. It could be `None` or `IBM App Connect ETL` as of now.


## 1. Create Data Service for S3

<details><summary>CLICK ME</summary>


Need to create a Data Service for S3 bucket.

1. Open the Data Services by clicking  `Admin > Data flow Automation`

<img src="images/img-11.png">

The Data services page is opened.

2. Click on `Add New Service`

<img src="images/img-12.png">

3. Enter the following.

- Type : Amazon S3
- Onwer : Envizi
- Name : Enter any value

4. Click on `Save`

<img src="images/img-13.png">

The Data service is created.

5. Open the Data Services by clicking  `Actions > Manage Connections`

<img src="images/img-14.png">

The `Manage Connections` page of the data service is opened.

<img src="images/img-15.png">

6. Note down the values of the following in a text file
- Bucket 
- Folder
- UserName
- Access Key
- Secret Access Key

</details>

## 2. Create Data Pipeline

<details><summary>CLICK ME</summary>


Need to create Data pipeline to download udc files from S3 bucket and push to Envizi for data ingestion. 

1. Open the Data Pipeline by clicking  `Data pipelines` from the top links.

<img src="images/img-16.png">

The Data pipelines page is displayed.

2. Click on `Add New Pipeline`

<img src="images/img-17.png">

3. Enter the following.

- Name : Enter any value
- Target System : Accounts
- FileName Pattern : Regex pattern need to be given. For Accounts related data the file starts with POC. ex: ^POC.*\.xlsx
- Data Source : Give the S3 data source that we created before
- Data Transformer : None. (No need of any transformation.)

4. Click on `Save`

<img src="images/img-18.png">

The Data pipeline is created.

<img src="images/img-19.png">

</details>

## 3. Sending UDC excel to S3

### 3.1 Sending via Postman

<details><summary>CLICK ME</summary>

<img src="images/img-22-postman.png">


<img src="images/img-23-postman.png">

</details>


### 3.2 Sending via Python Script

<details><summary>CLICK ME</summary>

Lets use the sample python script [main.py](./python/main.py) to push the [data.xlsx](./python/data.xlsx) file into S3 now. 

1. Download the `main.py` and `data.xlsx` files into a folder.

2. Update the `Organization`, `Location` and `Account Style Caption` column in the `data.xlsx` with the some existing location in your envizi environment.

3. Open the linux/mac terminal window and goto folder where you downloaded the `main.py` file.

4. Instal the `boto3` for python if it is not available in your system.
```
python -m pip install boto3
```

5. Run the below command with your S3 Data service values.
```
export s3_BUCKET_NAME=envizi-client-dataservice-us-prod
export s3_FOLDER_NAME=client_9608cd600af647
export s3_ACCESS_KEY=AKIxxxxxxxxxxxxxxx
export s3_SECRET_KEY=axhHxxxxxxxxxxxxxx

```
6. Run the below command to push the file to S3
```
python main.py
```

you may get the output like this..
```
S3Handler  ...
 ENVIZI_S3_AWS_BUCKET_NAME : envizi-client-dataservice-us-prod
 ENVIZI_S3_AWS_FOLDER_NAME : client_9608cd600af647
output/results-10122023-110535-725742/POC Account Setup and Data Load_G1_20231012-110543.xlsx is uploaded to envizi-client-dataservice-us-prod  : client_9608cd600af647/POC Account Setup and Data Load_G1_20231012-110543.xlsx
2023-10-12 11:05:45,747 - INFO:127.0.0.1 - - [12/Oct/2023 11:05:45] "POST /api/turbo/query HTTP/1.1" 200 -
```

The envizi should have processed your file now.

7. Goto file delivery status screen by Clicking on `File Delivery Status`

You can see the status of your file.

<img src="images/img-20.png">

</details>

### Reference 

Data Services - https://knowledgebase.envizi.com/home/provisioning-data-services 

Data Pipelines - https://knowledgebase.envizi.com/home/configuring-data-pipelines 

