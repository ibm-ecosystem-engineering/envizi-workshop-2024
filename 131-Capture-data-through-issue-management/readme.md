
# Data capture through Issue management

In this lab exercise we will look at how the missing data is captured via Issue Management. 

In the previous lab, you have leart how to use the Envizi out of the box reports such as `Account Data health check ` and `Account Incomplete Report`,  to identify the data quality issues across locations, accounts and suppliers. 

Now in this lab, we wills see how the data is captured via Issue Management

# 1. Data capture through Issue management

Let's look at how the data is captured via Issue Management

<details><summary>CLICK ME</summary>

So far in this lab exercise, 
- have identified the account with missing data or accounts in arrears
-  raised an issue and assigned to an user to capture the data

Now, lets look at how the issue is resolved by the assigned user. 

1. Login in Envizi UI with the user with `DataManager role`. Note: This step is required only if issue is assigned to a different username with Datamanager role, Otherwise continue below. Also note that, the menu options look different for the user with DataManager role. Below screenshots are from the Envizi UI using user with DataManager role. 


### Open Issue-Summary

2. Click on `Monitor > Issues > Summary` to Open the Issues Summary page.

<img src="images/Envizi-DataManager-Issue-Summary.png">

### Open Issue Details

3. Click on issue under `Issues by Location`.  

Please note that you can also go to this same screen directly from Envizi UI -> `Manitor` -> Issues -> `All issues`

<img src="images/Envizi-DataManager-Issue-View.png">

4. Click on `View Issue`

5. View details of the issue 

<img src="images/Envizi-DataManager-Issue-View-Details.png">

### Update issue status as InProgress

6. Update the issue status from `ToDo` to `Investigating` / `InProgress`

<img src="images/Envizi-DataManager-Issue-Update-status.png">

### Capture Data

7. Now start working on the issue. Click on the `Capture Data` button on right side of the page. 

    Provide details for the fields , verify all other fields which are auto-populated and `Save`
   - Total Electricity (kWh)
   - Total Cost (optional)
  
<img src="images/Envizi-DataManager-Issue-Capture-data.png">

You can attach invovices if you have for this billing period.

### View the Progress

8.View the Progress and the records in the Issue page.

<img src="images/Envizi-DataManager-Issue-Capture-data-done.png">

There are different ways to capture data, which we will learn in other exercises.
Scroll-down on the page to view the activity log of the issue. 

### Update Issue Status as SUBMITTED

9. Now lets Update the status of the issue as it is resovled. Click on  `Boards` from right-hand corner on the issue page

<img src="images/Envizi-DataManager-Issue-Board.png">


10.  Drag and drop the issue tile from `IN PROGRESS` column from Board to `SUBMITTED` column

<img src="images/Envizi-DataManager-Issue-Board-updated.png">

### Update Issue Status as Resolved

11. The assignee will be notified on the status of the issue and can view the records loaded into Envizi Account
<img src="images/Envizi-Issue-Capture-data-verified.png">

12.  Once verified the records, the System admin update of the issue status from `Submitted` to `Resolved`
<img src="images/Envizi-Issues-Resolved.png">

### Issue Activity log

13.   Assigned user is notififed of the status change. Can also check activity log. 

<img src="images/Envizi-Issues-Done.png">

</details>

# 2. Conclusion
That concludes the Data Monitoring exercise for the Account data quality.

In this lab, you have leart about, how the missing data is captured via Issue Management.
