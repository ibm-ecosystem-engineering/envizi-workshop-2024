# Creating Custom Power Reports in Envizi

PowerReports can be viewed, edited and saved, and kept private or shared with other Envizi users within your organization.  This gives users the freedom to navigate and respond to the changing reporting requirements of your organization.

In this lab exercise you will explore about the How to create a new custom Power Reports in Envizi .

#### Pre-Requisite

1. Get your `Prefix-Id` from your Instructor. This id to be prefixed in all your data to avoid duplicate records. Your `Prefix-Id` could be in the format `MU11`, `MU12`.

## 1 PowerReport Edit Permission

To create a new custom power report or to edit the existing power report the user needs to have the `PowerReport Edit` work role.

<img src="images/11-permission.png">

## 2 PowerReport Datasets

For customers who want to build their own reports, PowerReports can be built using Standard Datasets, available with their relevant modules:

There are 3 datasets available in Envizi.

<details><summary>CLICK ME</summary>

### 2.1 Monthly Dataset

The Monthly Dataset is a comprehensive dataset containing monthly aggregated data from your Envizi platform. It powers the majority of Standard PowerReports across many modules and can be leveraged to build powerful custom reports directly in the Envizi platform.

A comprehensive dataset containing consolidated monthly data, which includes support for data type groups, ratios, and a range of standard data objects.

https://knowledgebase.envizi.com/home/monthly-dataset-glossary

### 2.2 Survey Dataset

The Survey Dataset supports reporting on surveys and scorecards (Surveys which include scoring) in Envizi's PowerReport framework.

The dataset includes all survey responses for all surveys that have at least one question answered. If a respondent has not filled in any answers, that Location’s (which could represent a third party like a supplier or investee) survey response will not be included.

A dataset containing survey responses and scoring for scorecard-type surveys.

### 2.3 Daily Dataset

A dataset that includes a range of daily metrics derived from interval meter data. This dataset will be supported via the Interval Meter Analytics module.

</details>

## 3 PowerReport Edit

The existing power report can be saved as a new copy and then it can be edited.

### 3.1 Open the existing Power Report

<details><summary>CLICK ME</summary>

1. Open a Power report that you are interested. Here lets open the `Monthly DataSet` power report.

<img src="images/12-Open-1.png">

<img src="images/12-Open-2.png">

The report is displayed like this.

<img src="images/12-Open-3.png">

</details>

### 3.2 Save a Copy

<details><summary>CLICK ME</summary>

1. In the above screen, click on `Save a Copy` button to save a separate copy of the report.

2. Enter the name for the report. Name of the report should start with your Prefix-Id.

3. click on `Save` button

<img src="images/13-SaveCopy-1.png">

4. Click on `View Report` button to open the saved report.

<img src="images/13-SaveCopy-2.png">

The report is displayed as below.

<img src="images/13-SaveCopy-3.png">

</details>

### 3.3 Edit Home

<details><summary>CLICK ME</summary>

1. In the above screen, click on `Edit` button to open the report in the edit mode.

The report is opened in Edit mode.

<img src="images/14-EditHome-1.png">

2. Update the heading section

<img src="images/14-EditHome-2.png">

3. Clear the first 2 tiles content

<img src="images/14-EditHome-3.png">

4. Update the 3rd tile  content

<img src="images/14-EditHome-4.png">

The home page of the report looks like this now.

<img src="images/14-EditHome-5.png">

</details>

### 3.4 Create Page

<details><summary>CLICK ME</summary>

1. In the above screen, click on `+` button to open a new page.

2. Enter the page name as `Consumption`

<img src="images/15-Heading-1.png">

3. Click on the Textbox icon from the top

<img src="images/15-Heading-2.png">

4. Enter the text as `G12 - In Bank Consumption Report`. Use your Prefix-Id instead of G12.
<img src="images/15-Heading-3.png">

The content may look like this
<img src="images/15-Heading-4.png">

</details>

### 3.5 Create Table data for Consumption

<details><summary>CLICK ME</summary>

1. From the Visualizations panel, choose the `Table` icon.

2. From the Data panel, Search for `Group`.

3. Choose the `Level 2 Group` and `Level 3 Group`

The table get displayed on the page with the L2 and L3 groups.

<img src="images/16-Table-1.png">

4. From the Data panel, Search for `Location`.

5. Choose the `Location Name`

The `Location Name` is added to the existing table.

<img src="images/16-Table-2.png">

6. From the Data panel, Search for `Energy`.

7. Choose the `Energy`

The `Energy` is added to the existing table.

<img src="images/16-Table-3.png">

8. Position the Table to the top left of the page.

<img src="images/16-Table-4.png">

</details>

### 3.6 Create Countrywise Consumption

<details><summary>CLICK ME</summary>

1. From the Visualizations panel, choose the `Bar Chart` icon.

2. From the Data panel, Search for `Country`.

3. Choose the `Country`

A panel get displayed on the page with the country.

<img src="images/17-Country-1.png">

4. From the Data panel, Search for `Energy`.

5. Choose the `Energy`

The `Energy` is added to the existing graph.

<img src="images/17-Country-2.png">

6. Position the Graph accordingly.

<img src="images/17-Country-3.png">

</details>

### 3.7 Create Level 3 Group wise Consumption

<details><summary>CLICK ME</summary>

1. From the Visualizations panel, choose the `Donut Chart` icon.

2. From the Data panel, Search for `Level`.

3. Choose the `Level 3 Group`

A panel get displayed on the page with the Level 3 group.

<img src="images/18-Level3-1.png">

4. From the Data panel, Search for `Energy`.

5. Choose the `Energy`

The `Energy` is added to the existing graph.

<img src="images/18-Level3-2.png">

</details>

### 3.8 Create Level 3 Group wise Consumption along with previous year

<details><summary>CLICK ME</summary>


1. From the Visualizations panel, choose the `Bar Chart` icon.

2. From the Data panel, Search for `Level`.

3. Choose the `Level 3 Group`

A panel get displayed on the page with the Level 3 group.

<img src="images/19-Previous-1.png">

4. From the Data panel, Search for `Energy` .

5. Choose the `Energy` and `Energy PY`

The `Energy` and `Energy PY` are added to the existing graph.

<img src="images/19-Previous-2.png">

</details>

### 3.9 Formatting

<details><summary>CLICK ME</summary>

1. Choose the `Bar Chart` Graph panel

2. From the Visualizations panel, choose the `Format` icon.

3. Choose the `General` tab

4. In the `Title > Title > Text` box enter the title as `Comparing Energy Consumption with Previous Year`.

5. Choose the `Text Color` as well.

<img src="images/20-format-1.png">

6. In the `Title > SubTitle > Text` box enter the title as `Level 3 Group`.

<img src="images/20-format-2.png">

7. Choose the `Title > Title > Background color` accordingly for the panel heading.

<img src="images/20-format-3.png">

8. Choose the `Effects > Background > color` accordingly for the panel body.

<img src="images/20-format-4.png">

9. Choose the `Energy by Country` `Bar Chart` panel

10. From the Visualizations panel, choose the `Format` icon.

11. Choose the `General` tab

12. Choose the `Effects > Background > color` accordingly for the panel body.

<img src="images/20-format-5.png">

</details>

### 3.10 Save

<details><summary>CLICK ME</summary>

1. Click on `Save` button to save the report.

<img src="images/21-Save-1.png">

The report is saved.

2. Label the button to `Consumption Report`

<img src="images/21-Save-2.png">

</details>

### 3.10 Create Account Level Consumption Page

<details><summary>CLICK ME</summary>


1. In the above page, click on `+` icon to create new page.

2. Enter the page name as `Account Consumption`

<img src="images/22-account-level-1.png">

3. Create a label with the text `Account level Consumption`.

<img src="images/22-account-level-2.png">

4. From the Visualizations panel, choose the `Pie chart` icon.

5. From the Data panel, choose the `Energy` and `Item Name`.

They get added to the page like this.

<img src="images/22-account-level-3.png">

</details>

### 3.11 Update Home Page

<details><summary>CLICK ME</summary>

1. From the Home page, copy and paste the existing tile 3 content in to tile 2.

<img src="images/23-home-1.png">

2. Change the labels of title and button accordingly in tile 3.

3. Choose the button `Account Consumption Report`

3. Choose the  `Button > Action > Destination` value as `Account Consumption`. (To enable the button click to open the `Account Consumption` page.)

<img src="images/23-home-2.png">

3. Click on `Save` button.

<img src="images/23-home-3.png">

</details>

### 3.12 Navigate from Home Page

<details><summary>CLICK ME</summary>

Now the page is in the view mode.

1. Click on the `Consumption Report` button.

<img src="images/24-home-navi-1.png">

It opens the `Consumption Report` page

<img src="images/24-home-navi-2.png">

2. Click on the `Account Consumption Report` button.

<img src="images/24-home-navi-3.png">

It opens the `Account level Consumption Report` page

<img src="images/24-home-navi-4.png">

</details>

### 3.13 Create Filter

<details><summary>CLICK ME</summary>

You can apply filters at 3 levels
- Entire Report Level
- Page Level 
- Panel Level

1. Click on `Edit` button to open the report in Edit mode.

<img src="images/25-filter-1.png">

The report is opened.

<img src="images/25-filter-2.png">

2. Open the `Consumption` page

3. Choose the `Filters` Panel

See the `Filters on all pages`

<img src="images/25-filter-3.png">

3. From the `Data` panel, drag and drop the `Level 1 Group` in to the `filters on all pages` section.
<img src="images/25-filter-4.png">

4. Select the `In Bank` check box to show only the data from `In Bank`. In your case you need to choose the `In Bank` with your Prefix-Id.

5. Click on `Save` button

<img src="images/25-filter-5.png">

The page is in view mode now.

The filters panel shows that the `In Bank` is selected by default.

<img src="images/25-filter-6.png">

6. Choose some other value from `Level 1 Group` and the entire page refreshes accordingly.

<img src="images/25-filter-7.png">

</details>


### 3.14 Sharing

<details><summary>CLICK ME</summary>

The custom report created is available exclusively for the current user.

<img src="images/26-share-1.png">

1. Right click on the report.

2. Choose `Sharing`

<img src="images/26-share-2.png">

3. Confirm it by clicking on `Yes`

<img src="images/26-share-3.png">

The report is available for all the users now.

<img src="images/26-share-4.png">

</details>


## Reference

1. Monthly Dataset - Glossary - Basic Fields
https://knowledgebase.envizi.com/home/monthly-dataset-glossary

2. Monthly Dataset - Glossary - Advanced Fields
https://knowledgebase.envizi.com/home/monthly-dataset-glossary-advanced-fields

3. Monthly Dataset - Tutorials
https://knowledgebase.envizi.com/home/monthly-dataset-tutorials

