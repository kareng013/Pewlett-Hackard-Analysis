# Pewlett Hackard Analysis

## Overview

In this analysis I'll be supporting Bobby ahead of the "*Silver Tsunami*", in order to prepare a work force that is ready once the expected number of employees retire.
To further our analysis, we'll be performing data retrieval steps in order to develop new tables that specificy the departments that need help. 
First, we'll retrieve the number of retiring employees by title and then perform an analysis of the results. Second, we'll retrieve a list of the employees eligible for the mentorship program.
This should help narrow down what positions most retiring employees are leaving behind, and which of these employees are eligible for the mentorship program to help transition new employees into their roles. 

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

In the second deliverable, we'll build a query to determine 

## Summary

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?