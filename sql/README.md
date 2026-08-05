# 🚲 Cyclistic Bike Share Analysis

## Project Overview

This project was completed as part of the Google Data Analytics Professional Certificate.

The objective is to analyze the behavior of Cyclistic bike-share users in order to understand the differences between annual members and casual riders. The analysis aims to provide data-driven recommendations that can help the marketing team convert casual riders into annual members.

The project follows the six phases of the Google Data Analytics process:

- Ask
- Prepare
- Process
- Analyze
- Share
- Act

---

## Business Problem

Cyclistic's marketing team wants to increase the number of annual memberships.

To support this objective, the analysis answers the following business questions:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to encourage casual riders to become members?

---

## Project Objectives

- Clean and prepare one year of Cyclistic trip data.
- Explore user behavior using SQL.
- Create meaningful features for analysis.
- Build an interactive dashboard in Tableau.
- Present business recommendations supported by data.
- Reproduce the analysis using Excel and Python.

---

## Dataset

The analysis is based on the Cyclistic bike-share trip data provided as part of the Google Data Analytics Capstone Case Study.

The dataset contains trip-level information collected throughout the year 2025. Each monthly dataset shares the same schema, allowing them to be merged into a single table for analysis.

### Main Variables

| Variable | Description |
|----------|-------------|
| ride_id | Unique identifier of each trip |
| rideable_type | Type of bicycle used |
| started_at | Ride start date and time |
| ended_at | Ride end date and time |
| start_station_name | Departure station |
| start_station_id | Departure station ID |
| end_station_name | Arrival station |
| end_station_id | Arrival station ID |
| start_lat | Departure latitude |
| start_lng | Departure longitude |
| end_lat | Arrival latitude |
| end_lng | Arrival longitude |
| member_casual | Rider type (Member or Casual) |

The complete dataset contains **5,547,430 trips** after cleaning.

---

## Tools Used

| Tool | Purpose |
|------|---------|
| Microsoft Excel | Initial data exploration and validation |
| Google BigQuery | Data cleaning, feature engineering and analysis |
| SQL | Querying and aggregation |
| Tableau Public | Interactive dashboard creation |
| Python (Pandas) | Reproducing the analysis (coming soon) |
| Git & GitHub | Version control and project documentation |

---

## Project Workflow

The project follows the six-step Google Data Analytics framework.

### 1. Ask
- Defined the business problem.
- Identified the three marketing questions.

### 2. Prepare
- Collected the twelve monthly datasets.
- Reviewed the dataset structure.
- Identified variables and data types.

### 3. Process
- Merged all monthly datasets in BigQuery.
- Checked missing values.
- Verified duplicate records.
- Calculated ride duration.
- Created new variables (day, month, hour, weekday).

### 4. Analyze
- Compared annual members and casual riders.
- Investigated ride duration.
- Analyzed weekly, monthly and hourly trends.
- Studied bike type preferences.

### 5. Share
- Designed an interactive Tableau dashboard.
- Highlighted the main findings.

### 6. Act
- Proposed business recommendations based on the analysis.
