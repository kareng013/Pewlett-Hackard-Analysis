# Pewlett Hackard Analysis

## Overview

In this analysis I'll be supporting Bobby ahead of the "*Silver Tsunami*", in order to prepare a work force that is ready once the expected number of employees retire.
To further our analysis, we'll be performing data retrieval steps in order to develop new tables that specificy the departments that need help. 
First, we'll retrieve the number of retiring employees by title and then perform an analysis of the results. Second, we'll retrieve a list of the employees eligible for the mentorship program.
This should help narrow down what positions most retiring employees are leaving behind, and which of these employees are eligible for the mentorship program to help transition new employees into their roles. 

The Chart below showcases the relations between each of the 6 datasets already created.

![EmployeeDB](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

## Results

The first deliverable begins by evaluating the number of retiring employees by title as shown in Image 1 below:

- A majority of names appear more than once with different titles within separate date ranges 
- This data shows the position the retiring employee started in the company with and what position they are retiring from based on to_date

![Image_1](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/retirement_titles.png)

**Image 1: Retirement Titles**

To expand on this further, we'll narrow our dataset down to obtain a unique set of titles to get employees retiring with their most recent title.

- This data set shows each retiring empoyees most recent title, and excludes those no longer working within the company
- This reduces the data set down by over 40,000 titles and helps narrow the search for the number of retiring positions presently active 

![Image_2](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/unique_titles.png)

**Image 2: Unique Titles**

As the last part of the deliverable, we'll determine the total number of employees by count() retiring from each title.

- A majority of the staff retiring is from senior level positions such as Senior Engineer and Senior Staff.
- 2 Managers are also retiring from one of the departments 

![Image_3](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)

**Image 3: Retiring Titles**

In the second deliverable, we'll build a query to determine the employees eligible for the mentorship program based on their date of birth.
Current retiring employees born between January 1, 1965 and December 31, 1965 will be eligible for this program.

- There are 1549 employees eligible for the mentorship program based on their year of birth

![Image_4](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibility.png)

**Image 4: Mentorship Eligibilty**

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

A total of 90,398 roles will need to be filled as this wave of retirees make their way out the doors. 
Out of this total, there are 29,414 Senior Engineers, 28,254 Senior Staff, 14,222 Engineers, 12,243 Staff, 4502 Technique Leaders, 1761 Assistant Engineers, and 2 Managers.

In order to ensure all roles have enough mentors, it would be useful to perform a query for count() in each title under the mentorship program.
This will help view the allocation in comparison to the number of roles needing to be filled.

From the image below we can make the following notes for Employees a part of the mentorship program:

- For Senior Staff and Senior Engineers, there will be 50-55 new employees for each individual retiring employee to train
- Each Engineer and Staff and will need to train roughly 75-80 new trainees each
- Technique leaders will need to train roughly 58 new trainees
- Assistant Engineers will need to train roughly 60 new trainees
- Managers will not have someone as part of this mentorship program

From these results we can see that there may be more people that need to be involved in the mentorship program, it might be better to expand the range of birth dates. 
From Managers, the most senior manager may need to be selected as part of this mentorship program. 

![Image_5](https://github.com/kareng013/Pewlett-Hackard-Analysis/blob/main/mentorship_count.png)

**Image 5: Mentorship Count**


Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

