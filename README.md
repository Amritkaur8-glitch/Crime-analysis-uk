## About This Project
This is my first hands-on data analysis project. I completed my Master's degree in the UK in 2023, and after some time away from hands-on technical work, I'm now focusing on building practical, applied skills to start my career as a data analyst. I used my AI friend  to help guide me through the R workflow as I rebuilt my confidence with the tools — from setup to analysis to publishing this project.
# City of London Crime Analysis
## Overview
Analysis of 12 months of crime data (May 2025 – May 2026) for the City of London, using R.
## Question
How has crime changed month by month over the last year, and which crime types are most common?
## Data Source
[data.police.uk](https://data.police.uk/data/) — official UK police crime records, City of London force, May 2025 to May 2026 (9,659 records).
## Method
- Combined 13 monthly CSV files into a single dataset using R (`dplyr`, `readr`)
- Cleaned and grouped data by month and crime type
- Visualized trends using `ggplot2`
## Findings
### Monthly Crime Trend
![Crime Trend](2.0%20Line%20Chart.png)
Crime peaked in December 2025 (810 incidents) and was lowest in September 2025 (689 incidents). Levels have generally stayed in the 690–810 range across the year, with a noticeable dip again in February 2026.
### Most Common Crime Types
![Top Crime Types](1.0%20Bar%20Chart.png)
"Other theft" was the most common crime type (2,112 incidents), followed by violence and sexual offences (1,661) and shoplifting (1,551).
## Caveat
This dataset shows *patterns*, not *causes*. For example, the December peak may relate to holiday shopping season, but confirming this would require additional data such as footfall statistics, staffing levels, or local events — which fall outside this dataset's scope.
## Recommendation
Given the seasonal rise in theft-related crime, retailers and police resourcing could be increased around the November–December period.
## Files
- `R_Script.R` — full analysis code
- `1.0 Bar Chart.png` — crime type breakdown
- `2.0 Line Chart.png` — monthly trend
