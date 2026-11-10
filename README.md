# adult-autism-screening-analysis
End-to-end data analytics portfolio project exploring the UCI Adult Autism Screening dataset using Excel, SQL, Python, and Power BI.
# Adult Autism Screening: Exploratory Data Analysis

## Project Overview

This project presents an exploratory data analysis of the Adult Autism Screening dataset obtained from the UCI Machine Learning Repository. The analysis examines participant characteristics, screening scores, classification outcomes and data quality issues to identify patterns and relationships within the dataset.

The project follows an end-to-end data analytics workflow, beginning with data preparation and cleaning, followed by SQL-based analysis, Python exploration and visualisation, and the development of an interactive Power BI dashboard.

The objective was to transform raw screening data into meaningful analytical findings and communicate those findings clearly through data visualisation.

## Business and Analytical Context

Screening datasets can contain useful information about participant characteristics and patterns in screening responses. However, raw data alone does not provide a clear understanding of the distribution of results, differences between participant groups or potential data quality limitations.

This project therefore focused on exploring the dataset systematically and answering questions that could help a reader understand its structure, screening score patterns and classification outcomes.

This is an exploratory analytics project, not a predictive modelling exercise. The analysis does not attempt to diagnose autism or predict an individual's clinical status.

## Research Questions

The analysis was guided by the following questions:

1. What are the demographic characteristics of participants in the dataset, including their age, gender and country of residence?
2. How are participants distributed across the recorded screening classifications?
3. How do average screening scores differ between participants classified as Yes and No?
4. Which of the ten screening questions show the strongest correlation with the recorded screening result?
5. What patterns can be observed in the age distribution of participants across the two classification groups?
6. What data quality issues are present, and how might they affect the interpretation of the analysis?

## Tools and Technologies

**Microsoft Excel:** Used to inspect, clean and prepare the raw dataset. This included identifying and removing five duplicate records, reviewing missing values and introducing a data quality flag to identify an invalid age entry.

**Oracle SQL:** Used to query the cleaned dataset, examine participant distributions, summarise screening classifications, calculate average screening scores and investigate data quality.

**Python (Google Colab):** Used for exploratory data analysis, descriptive statistics, correlation analysis and visualisations to examine patterns in participant characteristics and screening responses.

**Microsoft Power BI:** Used to develop an interactive dashboard presenting selected findings in a clear and accessible format.

## Methodology

The project followed five main stages.

### 1. Data Cleaning and Preparation

The dataset was first examined in Microsoft Excel to assess its structure and identify data quality issues. Five duplicate records were removed, missing values were reviewed, and an additional data quality flag was created to identify an invalid age value of 383 for further review.

### 2. SQL Analysis

Oracle SQL was used to explore the cleaned dataset and answer questions about participant demographics, screening classifications, score distributions and data quality. Aggregate functions, grouping and filtering were used to produce summaries that supported the investigation.

### 3. Python Exploratory Data Analysis

Python was used in Google Colab to examine the dataset in greater detail. Descriptive statistics were generated for participant age, while correlation analysis was used to explore the relationships between individual screening question scores and the recorded result. Visualisations were also used to examine age distributions across classification groups.

### 4. Dashboard Development

Microsoft Power BI was used to present the analysis through an interactive dashboard. The dashboard brings together key participant and screening information, allowing viewers to explore the results visually.

### 5. Interpretation and Reporting

Findings from Excel, SQL and Python were considered together to develop a consistent interpretation of the dataset. Data quality limitations were also considered when drawing conclusions.

## Key Findings and Insights

The dataset contained 699 participant records. The gender distribution consisted of 363 male and 336 female records, showing a relatively balanced distribution between the two recorded categories.

The recorded screening classification contained 512 participants labelled No and 187 labelled Yes. These figures describe the classifications in the dataset and should not be interpreted as confirmed clinical diagnoses.

A comparison of average screening scores showed a difference between the two classification groups. Participants labelled Yes had an average score of approximately 8.25, compared with 3.63 for participants labelled No. This indicates that higher screening scores were associated with the Yes classification in this dataset.

The correlation analysis identified A9 as having the strongest positive correlation with the recorded result, at approximately 0.668. A5 and A6 also showed relatively strong positive correlations, at approximately 0.607 and 0.599 respectively. These are associations within the dataset and do not establish causation.

The age analysis provided further insight into the distribution of participants across the two classification groups. It also highlighted the importance of checking unusual values before interpreting age-related results.

The data quality review identified five duplicate records and an invalid age value of 383. These issues demonstrate why data validation and cleaning are important steps before conducting analysis.

## Conclusion

This project demonstrates the application of practical data analytics techniques to a real-world screening dataset. By combining Excel, SQL, Python and Power BI, the analysis moved from raw data preparation to structured investigation, interpretation and visual presentation.

The findings revealed differences in screening score averages between the recorded classification groups and identified screening questions with stronger correlations to the recorded result. The project also highlighted the importance of data quality checks when working with real-world datasets.

Overall, the project strengthened practical experience in data cleaning, SQL querying, exploratory data analysis, data visualisation and communicating insights.

**Important limitation:** The dataset contains autism screening information. The classifications and relationships explored in this project are not clinical diagnoses, and the analysis should not be used to make medical conclusions about individuals.

## Project Author

**Loveth Chioma Ezeji**

Data Analytics Portfolio Project

**Tools:** Microsoft Excel | Oracle SQL | Python | Power BI

**Dataset Source:** UCI Machine Learning Repository
