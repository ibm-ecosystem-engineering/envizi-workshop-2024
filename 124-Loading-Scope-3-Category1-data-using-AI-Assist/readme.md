# Using AI Assist to classify Scope 3 data

In this exercise, using AI assist features we will load spend-based data for the `Category 1 Purchased goods` for our Bank.

For reference, here is our Bank Scope 3 groups and categories identified.
<img src="images/Bank-Scope3-Cat1-PGS.png">

We have already created the  Groups and locations for the same in the previous lab exercises. This exercise provide the instructions to capture the data by leveraging AI Assist with two different scenarios. 
   - Scenario 1 : Automatically submit the file processed by AI Assist directly 
   - Scenario 2 : Modify the file processed by AI Assist and submit manually

## 1. Download the AI Assist template

<details><summary>CLICK ME</summary>

1. Click on `Manage` -> `Data Upload Templates`

<img src="images/AI-assist-download-templates-1.png">

2. Select the file `Account Setup and Data Load - AI Assist` , 

3. Click on `Actions` and `Download`

<img src="images/AI-assist-download-templates-2.png">

4. Open the downloaded file `Account Setup and Data Load - AI Assist.xlsx` contents.

5. Go through all the 4 sheets of the file carefully to get more insights on AI Assist feature
   - **Records to load              :** This is main data file which will be processed once uploaded into the system 
   - **Guidance                     :** Provides overview of AI Assist, important notes on how to use various fields, do and don't 
   - **Supported account styles     :** Provides list Account styles supported for Scope 3 - Category 1 Purchased Goods and Services in Envizi through Eora 66 Emission factor library
   - **Template fields definitions  :** - Details on field types , mandatory or optional, etc

<img src="images/AI-assist-templates-contents.png">

</details>

## 2. Scenario 1: Automatically submit the file processed by AI Assist directly 
<details><summary>CLICK ME</summary>

### 2.1 Upload file for AI Assist Processing

1. Make a copy of the template file 

2. Prepare the template file by filling relevant columns or take the sample file
`Account-Setup-and-Data-Load-AI-Assist-set1.xlsx` available [here](./files/Account-Setup-and-Data-Load-AI-Assist-set1.xlsx) or in the shared Box folder.

3. Verify the values of the mandatory fields
   - Organization 
   - Location
   - Record Start YYYY-MM-DD
   - Record End YYYY-MM-DD
   - Spend in USD
   - NLP Reference 1
<img src="images/Scope3-cat1-set1-file.png">

4. Navigate to Envizi UI and click on  `Manage` ->  `AI AssistFile Processing`
<img src="images/AI-assist-file-process-menu.png">

5. Click on `Upload For AI Processing`
<img src="images/AI-assist-Upload-for-AI-process.png">

6. Select the file with Scope 3 spend based data and `Save`
<img src="images/AI-Assist-select-file-for-process.png">

### 2.2 Download AI Assist processed file

7. Once the file status changed to `Complete`, click on `Actions` -> `Download Processed File`
<img src="images/AI-assist-Download-file-action.png">

### 2.3 Observe and Update the account style

8. Open the file 
<img src="images/AI-assist-Processed-file-set1-download.png">

9. Verify the value of the column `Account Style Caption` updated by AI Assit

<img src="images/AI-assist-Processed-file-set1-contents.png">    

Observe that the `Account style caption` is mapped correctly for the Cat 1 purchased goods activity data type based on the Natural language description provided in the NLP reference column. 

### 2.4 Upload the file Data loading

10. As we are satisfied with the account style mapped by AI Assist, we will proceed to load the data by uploading this file directly from AI Assist page.

Submit the file for data loading.  `Manage` -> `AI Assist File Processing` -> Select the file -> click on `ACTIONS` -> `Submit for Data Loading`

<img src="images/AI-assist-Processed-file-set1-load.png">      

### 2.5 Verify file upload status

11. Check the status of the field `Data Loading Status` and wait till it shows `Submitted` and Click on `GO TO FILES PROCESSED`

<img src="images/AI-assist-Processed-file-set1-load-submitted.png">      

12.   Verify `File Status`  as `Loaded` and no errors. 

<img src="images/AI-assist-Processed-file-set1-load-processed.png">    

### 2.6 Verify Account

13.  Verify the Accounts created and data loaded. Navigate to `Organization Hierarchy` -> pick `locationt` and view the `Accounts` 

<img src="images/AI-assist-Cat1-HP-Account-created.png">  

14.  Click on the `Account` to view Account Summary page and look at `Account style` and `Records` loaded

<img src="images/AI-assist-Cat1-HP-Account-Summary.png">      


This concludes the Scenario 1 lab using the AI assist feature for deriving the relevant Account style for the spend based data of Scope 3 Category1. 

</details>

## 3. Scenario 2 : Modify the file processed by AI Assist and submit manually
<details><summary>CLICK ME</summary>

The following exercise calls out a a scenario where the account style assigned by AI assist is not mapped to correct Scope 3 Category or data type. In such cases, users can take modify the account style according to their requirement and then upload the files manually. Lets follow the steps to replicate this scenario.

### 3.1 AI Assist File Processing

### 3.1 Upload file for AI Assist Processing

1. Take copy of the  sample file `Account-Setup-and-Data-Load-AI-Assist-set2.xlsx` from [here](./files/Account-Setup-and-Data-Load-AI-Assist-set2.xlsx) or from the shared Box folder.

2. Update the fields Organization and prefix of location as created in your hierarchy in the file.  The file content looks like

<img src="images/Scope3-cat1-set2-file.png"> 

3. Navigate to Envizi UI and click on  `Manage` ->  `AI Assist File Processing`

4. Click on `Upload For AI Processing` 

5. Select the file updated in step-2 and `Save`

### 3.2 Download AI Assisted processed File

6. Once the file status changed to `Complete`, click on `Actions` -> `Download Processed File`

<img src="images/AI-assist-file-set2-uploaded-for-ai.png">

7. Open the `downloaded` file which is processed by AI Assit

<img src="images/AI-assist-Processed-file-set2-contents.png">

<!-- 8. Verify the value of the column `Account Style Caption` updated by AI Assit

<img src="images/AI-assist-Processed-file-set1-contents.png">     -->

### 3.3 Observe and Update the account style

8. Observe that the `Account style caption` column against each spend data.  Apart from Records/ Row 1, for the rest it is mapped correctly

For Row 1, the spend data is related to computers and laptops purchased, however AI Assist mapped to it as `S3.1 - Other real estate, general - USD or local` , which is incorrect. 

9. Update the `Account style caption` for the Row 1 to `S3.1 - Computer and electronic products - USD or local`
You can click on `Account style caption`  drop-down to chose  the correct one or can refer to sheet `Supported account styles`

<img src="images/AI-assist-Processed-file-set2-contents-updated-by-user.png">

### 3.4 Upload the file for data loading

10. As we have modified the file after AI Assist processing, we can't directly submit the file for data loading as we did in the previous exercise. Here, we need to manual provide the file to upload. 

`Manage` -> `AI Assist File Processing` -> Select the file -> click on `UPLOAD DIRECTLY TO DATA LOADING`
<img src="images/AI-assist-Processed-file-set2-load-manual.png">

### 3.5 Verify file upload status

11. Check the status of the file from AI Assist page. Observe the filed status  - `AI Processing Status` - `Not Applicable` . This is because, the file we have uploaded is already having the `Account style caption` filled. AI Assist only process the rows if the `Account style caption` is blank and the `NLP reference 1` column is filled. 
<img src="images/AI-assist-Processed-file-set2-load-status.png">

12.  Click on `GO TO FILES PROCESSED` , which shows the file status and the number of accounts created. 
<img src="images/AI-assist-Processed-file-set2-load-processed.png">

Observe the values of the fields `File Status` , `Records In`, `Records Out` and `Delivered By`

### 3.6 Verify Account Summary

13. For the locations specificed in the data loading file, verify that  the accounts are created and the records are loaded by navigating through the `Organization Hierarchy` or going to the `Manage`-> `Location` -> `Accounts` -> view each account details .

This concludes the exercise. Happy Learning !
</details>

## Conclusion

In this lab exercise, we have learnt how Envizi uses Natural Language Processing (NLP) using the AI Assist feature, for categorizing the Spend based data into the appropriate Scope 3 Category 1 Purchased Goods & Services. 

 We have also looked into steps to follow when AI assist maps the correct account style as well as how to handle when the category mapped is not satisfactory to the user requirement. 

