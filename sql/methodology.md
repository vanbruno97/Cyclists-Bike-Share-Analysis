#  Methodology

## Introduction

This project follows the six-step data analysis process introduced in the Google Data Analytics Professional Certificate:

1. Ask
2. Prepare
3. Process
4. Analyze
5. Share
6. Act

Each phase was completed using the most appropriate tool for the task.

---

# Ask

## Objective

The objective was to identify behavioral differences between annual members and casual riders and provide business recommendations to increase annual memberships.

Three business questions guided the entire analysis.

---

# Prepare

## Data Collection

The dataset consists of twelve monthly Cyclistic trip datasets covering one year of bike-share activity.

Each monthly dataset was reviewed to ensure a consistent structure before being merged.

### Tool Used

**Google BigQuery**

**Why?**

- Handles millions of records efficiently.
- Simplifies querying large datasets.
- Supports SQL for scalable data analysis.

---

# Process

## Data Cleaning

The cleaning process included:

- Checking missing values
- Detecting duplicate ride IDs
- Identifying negative ride durations
- Reviewing missing geographic coordinates

### Feature Engineering

New variables were created to support the analysis:

- Ride duration
- Day of week
- Day name
- Month
- Hour

### Tool Used

**SQL (Google BigQuery)**

**Why?**

- Fast data transformation
- Reproducible workflow
- Efficient feature creation
- Easy aggregation of large datasets

---

# Analyze

Descriptive analyses were performed to compare annual members and casual riders.

The analysis focused on:

- Rider distribution
- Average ride duration
- Weekly usage
- Monthly usage
- Hourly usage
- Bike type preferences

### Tool Used

**SQL (Google BigQuery)**

**Why?**

SQL enables fast aggregation of millions of records while producing reproducible analytical results.

---

# Share

The results were presented through an interactive dashboard.

The dashboard was designed to communicate the main insights clearly to a business audience.

### Tool Used

**Tableau Public**

**Why?**

- Interactive dashboards
- Clear business storytelling
- Professional visualizations
- Easy online sharing

---

# Complementary Analysis

## Microsoft Excel

Excel will be used to reproduce part of the descriptive analysis using:

- Pivot Tables
- Summary statistics
- Basic visualizations

This demonstrates the ability to perform similar analyses using spreadsheet software.

---

## Python

Python will reproduce the SQL workflow using the Pandas library.

The objectives are to:

- Import data
- Clean data
- Create features
- Perform descriptive analysis
- Export summary datasets

This demonstrates the reproducibility of the project using a programming language widely used in data analytics.

---

# Version Control

Throughout the project, Git and GitHub were used to:

- Organize project files
- Track changes
- Document each analysis step
- Share the project publicly

---

# Methodology Summary

| Phase | Tool |
|--------|------|
| Ask | Business Understanding |
| Prepare | Google BigQuery |
| Process | SQL (BigQuery) |
| Analyze | SQL (BigQuery) |
| Share | Tableau Public |
| Complementary Analysis | Excel |
| Reproducibility | Python (Pandas) |
| Documentation | Git & GitHub |

---

# Conclusion

This project demonstrates an end-to-end data analytics workflow, from raw data preparation to business recommendations. By combining SQL, Tableau, Excel, Python, and GitHub, the analysis is transparent, reproducible, and accessible to both technical and non-technical audiences.
