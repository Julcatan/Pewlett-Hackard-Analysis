# Pewlett-Hackard-Analysis

## Overview of the analysis:

The purpose of the analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 
We were asked to write a report that summarizes the analysis and will help prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

This is the SQL Query that was used to analyze the data: https://github.com/Julcatan/Pewlett-Hackard-Analysis/blob/55bcbdd0ec433929c678640ae0457082cbe91efa/Analysis%20Folder/Queries/Employee_Database_challenge.sql

## Results: 


  ####  _The Number of Retiring Employees by Title_
  ---  
   - The analysis includes employees who were born between January 1, 1952 and December 31, 1955 and are therefore approaching retirement age.
    
   - Since some employees have multiple titles in the database we base our analysis on the most recent title.
    
   - A total of 90,398 employees are about to retire.
    
   - The count per title is as follow:
    
      - 29414	Senior Engineer
      - 28254	Senior Staff
      - 14222	Engineer
      - 12243	Staff
      - 4502	Technique Leader
      - 1761	Assistant Engineer
      - 2	    Manager

  ![image](https://user-images.githubusercontent.com/91682586/144054023-5cad0276-5618-4376-98e7-6e3eb1699529.png)

   	  
  #### _Employees Eligible for the Mentorship Program_
  ---
   - Current employees who were born between January 1, 1965 and December 31, 1965 are eligible for the mentorship program.
   - For duplicate employees in the dataset we used the first occurence in the table sorted by employee number.
   - The analysis shows that currently 1549 employees are eligible for the program. 
   - Please find the query result here: [https://github.com/Julcatan/Pewlett-Hackard-Analysis/blob/main/Analysis%20Folder/Data/mentorship_eligibility.csv]
 

## Summary: 
---
 _A large number of employees is ready to retire._

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
---
  - A total of 90,398 employees are about to retire and their roles need to filled.
    Please find the complete table of retirees here: 
    https://github.com/Julcatan/Pewlett-Hackard-Analysis/blob/3809b026c8aa5766209a7da69ac2481c9567335b/Analysis%20Folder/Data/retirement_titles.csv

  - This is a breakdown by percent and most recent title.	
 ![image](https://user-images.githubusercontent.com/91682586/143709971-2404a257-cfd5-40dd-8069-d4dac1838e3c.png)

  - Senior staff makes up the highest percentage of upcoming retirees.

#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
---
_There are enough qualified, retirement- ready employees in the departments that could train the next generation. There are  not enough employees eligible for the mentorship program though._ 
  
  - Please find a summary here: 
    
    ![image](https://user-images.githubusercontent.com/91682586/144063470-21bcfdc5-0069-4445-b2c5-209497243716.png)

   
  - This is a breakdown of the employees elibible for mentorship with titles:
           
   ![image](https://user-images.githubusercontent.com/91682586/143691916-cfbadb74-4fc0-4c78-80de-cd6eaf874497.png)
  

  - The Data table can be found here:  https://github.com/Julcatan/Pewlett-Hackard-Analysis/blob/c965d7d86d66ab5518d761613daa28ff4a6c504b/Analysis%20Folder/Data/mentorship_by_title.csv
  
  - _The mentorship program should be expanded and/ or more aquisition of new qualified employees should be pursued._    
   


