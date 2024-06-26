# Load data using Data Flow automation Service Cloud Storage (S3) via Postman


In this exercise you would learn how to use Postman tool to invoke CloudStorage (S3) apis to load data into the Envizi. The data is provided in .csv/xlsx file in the format of Universal Account Connector templates.

## 1. Use Postman tool to load the Data into Envizi S3 Folder

<details><summary>CLICK ME</summary>

### 1.1 Get S3 Details.

1. Get the details of the Envizi Cloud Storage (S3) credentials

- Bucket Name
- Folder Name
- Access Key
- Secret Access Key
  
You can find this info in the file `50-s3-configs.txt` from the shared Box folder.

### 1.2 Get the prepopulated template file

1. Get the sample file `06-POCAccountSetupandDataLoad_INbank_India_ATMs-IBM50.xlsx` from the shared Box folder.

2. Remove `06-` from the file name and replace `IBM50` with your `Prefix-Id`

3. Replace the `ORGANIZATION` column values with Organization name you obtained as a prerequisite.

4. To prevent naming conflicts, replace `IBM50` with your `Prefix-Id` for the  `Location` and `Account Number` columns.


### 1.3 Form the URL for S3

1. Form the url based on the below syntax.

   http://<bucket_name>.s3.amazonaws.com/<folder_name>/<file_name_with_extension>

   Replace the `bucket_name`, `folder_name` and `file_name_with_extension` in the above url.

   Example: `http://envizi-client-dataservice-us-prod.s3.amazonaws.com/client_dedd4566f2f247/POCAccountSetupandDataLoad_INbank_Co_All.xlsx`

    
### 1.4 Push the file using PostMan

1. Open Postman tool
   
2. Click to "+" to add a new request 

<img src="images/Envizi-AWS-S3-using-Postman-NewRequest.png">

3. In the request window of Postman, configure the below 
- `Method`: `PUT`
- `URL`:  The one formed in step 1

4. Click on `Authorization` tab and Set below parameters 
- Select `Type`: `AWS Signature`
- `AccessKey`: Obtained in pre-reqs for S3 connection
- `SecretKey`: Obtained in pre-reqs for S3 connection

    ##### Expand `Avanced Configuration` and set below:
- `AWS Region` - `us-east-1`
- `Service Name` - `s3`


<img src="images/Envizi-AWS-S3-using-Postman-Authorization-1.png">


5. Click on `Body` tab and 

- Select `binary`
- Click on `Select File` box and click on `New File from local machine`


<img src="images/Envizi-AWS-S3-using-Postman-SelectNewFile.png">

- Chose the file and click `Open`

<img src="images/Envizi-AWS-S3-using-Postman-SelectedFile.png">

- Make sure the file name matches the file selected
  
6. Click on `Send`

7. Check the `Respnse` status should be `OK`
<img src="images/Envizi-AWS-S3-using-Postman-RequestSuccess.png">

</details>


## 2. Validate the Data loaded through Envizi UI

<details><summary>CLICK ME</summary>


1. Navigate to `Admin` > `Data Flow Automation` 
2. Click on `File Delivery Status` to check the file loaded

<img src="images/Envizi-AWS-S3-using-Postman-DF-FileDelivery.png">

3. Navigate `Manage` > `Files Processed - Accounts & Setup`

<img src="images/Envizi-AWS-S3-using-Postman-FileProcessed.png">

4. Verify the file is loaded successfully
   
5. Navigate to `Manage` > `Accounts` > `IN Bank -  Bangalore ATM Diesel`
   
<img src="images/Envizi-AWS-S3-using-Postman-Account.png">

You can see the Account is created and also the records are loaded successfully.


</details>

## 3. Troubleshooting 

### 3.1. Data Load Issue - Verify logs

<details><summary>CLICK ME</summary>


If the file is not processed and showing the Error in the Load Status of the file delivered to S3 as below, then verify the Parse errors and Load erros

1. In Envizi UI `Admin` > `Data Flow Automation`  > `File Delivery Status`
<img src="images/Envizi-AWS-S3-using-Postman-LoadIssue-1.png">

2. Select File with error 

3. Click `Actions` > `Loading logs`
<img src="images/Envizi-AWS-S3-using-Postman-LoadIssue-2.png">

4. View the `File Status`
<img src="images/Envizi-AWS-S3-using-Postman-LoadIssue-3.png">

5. Click on `Actions` 
<img src="images/Envizi-AWS-S3-using-Postman-DF-FileDelivery-ShowParseError.png">

6. Click on `Parse Errors` to check if any parsing errors
   
<img src="images/Envizi-AWS-S3-using-Postman-DF-FileDelivery-ParseError.png">

7. You can see if there are any errors. In the above screen-shot it shows the file content seems to be coming as garbage data instead of actual data.
The error message : 
Unable to match the current row with any of the row specifications.File specification "Envizi_POC_Account_Setup_And_Data_Load". Row number 1

8. For this particular garbage data issue, it seems like the file is somehow got corrupted on the source machine where Postman is running. This got resolved when we restarted the Postman. However, you need to check based on the error message.

9. Similarly, you can check `Load Errors` 
    

</details>

### 3.2. Postman related issue - Mismatch of header x-amz-content-sha25

<details><summary>CLICK ME</summary>


If the request in Postman fails with the error : The provided 'x-amz-content-sha256' header does not match what was computed. 

Please follow the below instructions to resolve.

1. Generate the shasum code for your file by executing the below file
    `shasum -a 256 <UDC_File_TO_Upload.xlsx>`

2. Copy the output of the command  

<img src="images/Envizi-AWS-S3-using-Postman-Shasum-cmd.png">

3.  Click on `Headers` tab and add additional header as below
-  `Key`: `x-amz-content-sha256`
-  `value`: Output of the command  from Step 1&2 above

<img src="images/Envizi-AWS-S3-using-Postman-RequestHeader.png">

</details>


### Reference 
Data Services - https://knowledgebase.envizi.com/home/provisioning-data-services 

Data Pipelines - https://knowledgebase.envizi.com/home/configuring-data-pipelines 
