# Create Scope 3 Groups, Locations using Config Connector

In this lab exercise we will Create groups and locations for Scope 3 Categories identified for our Bank example. 

<img src="images/Org-Hier-S3.png">

You have already learnt how to use Config connector in the previous lab. 

#### Pre-Requisite

1. Get your `Prefix-Id` from your Instructor. This id to be prefixed in all your data to avoid duplicate records. Your `Prefix-Id` could be in the format `BLR01`, `BLR02`.
2. Get the `Organization` name from Instructor.

#### Key steps

Here are the key steps in this process:

- Download the Envizi excel templates for Config Connector and UDC
- Create Organization Hierarchy for Scope 3
- Capture data into Scope 3 Accounts

## 1. Preparing the Prepopulated Template

Let's get the Prepopulated Template file and do the required changes.

1. Get the Prepopulated Template data file `04-Envizi_SetupConfig_INbank-S3-IBM50.xlsx` from the shared Box folder. 
2. The file name format should be `Envizi_SetupConfig_xxxxx.xlsx`. Remove `04-` from the file name and replace `IBM50` with your `Prefix-Id`. 
3. Replace the `ORGANIZATION` column values with Organization name you obtained as a prerequisite.
4. To prevent naming conflicts, replace `IBM50` with your `Prefix-Id` for `GROUP NAME 1`, `GROUP NAME 2`,	`GROUP NAME 3` and `LOCATION` columns. For example, transform `IBM50-IN Bank - Data Centers` to `BLR12-IN Bank - Data Centers`, assuming your `Prefix-Id` is `BLR12`.


The Prepopulated Template file is ready for upload now.

## 2. Upload the template file into Envizi

Lets us upload the above updated template file into Envizi for to create Organization Hierarchy.

1. Follow the steps given [here](../201-uploading-a-file) to upload the file into Envizi.

## 3. View the Scope 3 Groups in Envizi

Once verified that the files are uploaded and processed successfully without any errors, navigate to Envizi UI to view the newly created groups and locations for our Bank hierarchy
<img src="images/Bank-Scope3.png">

We have completed creating groups and locations using the Config Connector.  

Lets move on to next section to create accounts and load the data.
