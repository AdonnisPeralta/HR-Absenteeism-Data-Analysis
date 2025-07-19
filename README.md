#HR Absenteeism Data Analysis

A brief description of what this project does and who it's for

# Project Background
The HR department is looking to find patterns in the employee's health metrics and using a budget of $983,221 to desperse it amoung the employees that are non-smokers and a total budget of $1000 for "healthy" individuals & with low absenteeism.

Along with giving the healthy employees a bonus for the year from the budgeted amount, HR is also looking to understand absenteeism at work.


Insights and recommendations are provided on the following key areas:

- **Provide a list of Healthy individuals & low absenteeism for the healthy bonus program of $1000** 
- **Calculate a wage increase or annual compensation for non-smokers** 
- **Find the average hours of work missed by BMI category** 
- **Identify what season has the most absentees** 

Targed SQL queries regarding various business questions can be found here [link](<HR Request Results Queries.sql>).

An interactive Tableau dashboard used to report and explore sales trends can be found here [link].



# Data Structure & Initial Checks

The companies main database structure as seen below consists of three tables: reasons, compensation, absenteeism_at_work, with a total row count of 1,509 records. A description of each table is as follows:

- **reasons:** Holds a description of the reason for an absence based on the reason's ID.
- **compensation:** Has an employee's ID and how much the employee makes an hour
- **absenteeism_at_work:** Holds the majority of the company's employee health information and absence data.

![Entity Relationship Diagram](HR_Health_Insurance_Analysis_EDR.png)



# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

Based on the findings, on average the healthy and overweight health categories have the highest amount of absentee hours per year on average by approximately 55%. 

There were 111 employees that met the criteria for getting the $1000 compensation from the healthy employee bonus of having a BMI < 25, non-smoker, non-drinker, absences < avg(absences).

There were 686 Between those 686 employees the total hours they work for the year 1,426,880, and with a budgeted $983,221 split amongst the group as a bonus for the year or as an addition to their hourly compensation it would be $1,433.26 for the year or $0.68 added to their hourly wage.

The two seasons that produce the most absences appear to be the spring followed by summer.


[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Category 1:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
