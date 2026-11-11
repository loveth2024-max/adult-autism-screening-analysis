# ADULT AUTISM SCREENING DATA ANALYSIS
## SQL Analysis and Query Documentation

**Tool:** Oracle SQL Workshop  
**Database Table:** "2022"  
**Project:** Adult Autism Screening Data Analysis

---

# 1. PROJECT OVERVIEW

This SQL analysis explores the Adult Autism Screening dataset to understand participant characteristics, examine screening scores, assess data completeness and quality, and investigate patterns in autism screening classifications.

SQL was used to inspect the dataset, retrieve records, calculate summary statistics, identify potential data-quality issues and compare screening scores across participant classifications.

# 2. DATASET INSPECTION AND STRUCTURE

## Query 1: Retrieve the Dataset

**Analytical question:** What does the dataset contain?

**Purpose:** To retrieve all records and columns from the dataset for initial inspection and to understand its structure.

```sql
SELECT *
FROM "2022";
```

## Query 2: Count Total Records

**Analytical question:** How many records are available in the dataset?

**Purpose:** To establish the total number of records before beginning the analysis.

```sql
SELECT COUNT(*)
FROM "2022";
```

**Result:** 699 records.

## Query 3: Check the Dataset Table

**Analytical question:** Does the dataset table exist in the Oracle database?

**Purpose:** To check the database metadata for the imported table.

```sql
SELECT TABLE_NAME
FROM USER_TABLES
WHERE TABLE_NAME = '2022';
```

## Query 4: Count the Dataset Columns

**Analytical question:** How many columns are registered for the dataset?

**Purpose:** To inspect the database metadata and establish the number of columns.

```sql
SELECT COUNT(*)
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = '2022';
```

## Query 5: Retrieve Column Names

**Analytical question:** What variables and fields are available in the dataset?

**Purpose:** To retrieve the column names in their original database order.

```sql
SELECT COLUMN_NAME
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = '2022'
ORDER BY COLUMN_ID;
```

## Query 6: Identify the Classification Column

**Analytical question:** Is there a column containing the autism classification variable?

**Purpose:** To search the database metadata for column names containing the word CLASS.

```sql
SELECT COLUMN_NAME
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = '2022'
AND COLUMN_NAME LIKE '%CLASS%';
```

# 3. PARTICIPANT DEMOGRAPHIC ANALYSIS

## Query 7: Gender Distribution

**Analytical question:** How are participants distributed across gender categories?

**Purpose:** To calculate the number of participants in each gender category.

```sql
SELECT "GENDER",
       COUNT(*) AS TOTAL_PEOPLE
FROM "2022"
GROUP BY "GENDER"
ORDER BY TOTAL_PEOPLE;
```

**Result:** 363 male participants and 336 female participants.

## Query 8: Country Distribution

**Analytical question:** Which countries are represented in the dataset, and how many participants come from each country?

**Purpose:** To group participants by country and calculate the total number of records for each country.

```sql
SELECT "COUNTRY",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "COUNTRY"
ORDER BY TOTAL_PARTICIPANTS;
```

## Query 9: Inspect the Country Variable

**Analytical question:** What country information is recorded in the dataset?

**Purpose:** To retrieve the country-of-residence values for inspection.

```sql
SELECT "CONTRY_OF_RES"
FROM "2022";
```

## Query 10: Country Distribution Using the Original Column Name

**Analytical question:** How are participants distributed by their recorded country of residence?

**Purpose:** To calculate participant counts using the original country-of-residence field in the database.

```sql
SELECT "CONTRY_OF_RES",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CONTRY_OF_RES"
ORDER BY TOTAL_PARTICIPANTS DESC;
```

**Note:** The column name `CONTRY_OF_RES` is retained here because it appeared in the original SQL history. The spelling should be checked against the actual dataset schema.

## Query 11: Autism Classification Distribution

**Analytical question:** How many participants fall into each autism classification category?

**Purpose:** To examine the distribution of participants classified as ASD or non-ASD.

```sql
SELECT "CLASS_ASD",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD"
ORDER BY TOTAL_PARTICIPANTS;
```

**Result:** 512 participants were classified as No and 187 as Yes.

# 4. SCREENING SCORE ANALYSIS

## Query 12: Retrieve Screening Results

**Analytical question:** What screening result values are recorded in the dataset?

**Purpose:** To retrieve the result variable for inspection before conducting further analysis.

```sql
SELECT "RESULT"
FROM "2022";
```

## Query 13: Summary Statistics for Screening Results

**Analytical question:** What are the minimum, maximum and total recorded screening scores?

**Purpose:** To calculate descriptive statistics for the RESULT variable.

```sql
SELECT COUNT("RESULT") AS TOTAL_SCORES,
       MIN("RESULT") AS LOWEST_SCORE,
       MAX("RESULT") AS HIGHEST_SCORE
FROM "2022";
```

**Result:** The screening score ranged from 0 to 10, with an average of approximately 4.86.

## Query 14: Compare Screening Results by Classification

**Analytical question:** How do average screening results differ between ASD and non-ASD classifications?

**Purpose:** To calculate the participant count and average screening result for each classification group.

```sql
SELECT "CLASS_ASD",
       COUNT(*) AS TOTAL_PARTICIPANTS,
       ROUND(AVG("RESULT"), 2) AS AVERAGE_SCORE
FROM "2022"
GROUP BY "CLASS_ASD";
```

**Result:**
- No: average score of 3.63.
- Yes: average score of 8.25.

## Query 15: Distribution of A1 Screening Scores

**Analytical question:** How frequently does each A1 screening score occur?

**Purpose:** To count the number of participants receiving each score for the first screening question.

```sql
SELECT "A1_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A1_SCORE"
ORDER BY "A1_SCORE";
```

## Query 16: Distribution of A2 Screening Scores

**Analytical question:** How frequently does each A2 screening score occur?

**Purpose:** To examine the distribution of responses to the second screening question.

```sql
SELECT "A2_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A2_SCORE"
ORDER BY "A2_SCORE";
```

## Query 17: Distribution of A3 Screening Scores

**Analytical question:** How frequently does each A3 screening score occur?

**Purpose:** To count the recorded responses for the third screening question.

```sql
SELECT "A3_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A3_SCORE"
ORDER BY "A3_SCORE";
```

## Query 18: Distribution of A4 Screening Scores

**Analytical question:** How frequently does each A4 screening score occur?

**Purpose:** To examine the response distribution for the fourth screening question.

```sql
SELECT "A4_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A4_SCORE"
ORDER BY "A4_SCORE";
```

## Query 19: Distribution of A5 Screening Scores

**Analytical question:** How frequently does each A5 screening score occur?

**Purpose:** To examine the response distribution for the fifth screening question.

```sql
SELECT "A5_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A5_SCORE"
ORDER BY "A5_SCORE";
```

## Query 20: Distribution of A6 Screening Scores

**Analytical question:** How frequently does each A6 screening score occur?

**Purpose:** To examine the response distribution for the sixth screening question.

```sql
SELECT "A6_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A6_SCORE"
ORDER BY "A6_SCORE";
```

## Query 21: Distribution of A7 Screening Scores

**Analytical question:** How frequently does each A7 screening score occur?

**Purpose:** To examine the response distribution for the seventh screening question.

```sql
SELECT "A7_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A7_SCORE"
ORDER BY "A7_SCORE";
```

## Query 22: Distribution of A8 Screening Scores

**Analytical question:** How frequently does each A8 screening score occur?

**Purpose:** To examine the response distribution for the eighth screening question.

```sql
SELECT "A8_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A8_SCORE"
ORDER BY "A8_SCORE";
```

## Query 23: Distribution of A9 Screening Scores

**Analytical question:** How frequently does each A9 screening score occur?

**Purpose:** To examine the response distribution for the ninth screening question.

```sql
SELECT "A9_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A9_SCORE"
ORDER BY "A9_SCORE";
```

## Query 24: Distribution of A10 Screening Scores

**Analytical question:** How frequently does each A10 screening score occur?

**Purpose:** To examine the response distribution for the tenth screening question.

```sql
SELECT "A10_SCORE",
       COUNT(*) AS TOTAL_RESPONSES
FROM "2022"
GROUP BY "A10_SCORE"
ORDER BY "A10_SCORE";
```

# 5. SCREENING SCORES BY ASD CLASSIFICATION

The following queries investigate how individual screening-question scores are distributed across the two classification groups.

## Query 25: A1 Score by Classification

```sql
SELECT 'A1' AS QUESTION,
       "CLASS_ASD",
       "A1_SCORE" AS SCORE,
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A1_SCORE";
```

**Purpose:** To compare A1 screening responses across ASD classification groups.

## Query 26: A2 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A2_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A2_SCORE";
```

## Query 27: A3 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A3_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A3_SCORE";
```

## Query 28: A4 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A4_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A4_SCORE";
```

## Query 29: A5 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A5_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A5_SCORE";
```

## Query 30: A6 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A6_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A6_SCORE";
```

## Query 31: A7 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A7_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A7_SCORE";
```

## Query 32: A8 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A8_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A8_SCORE";
```

## Query 33: A9 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A9_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A9_SCORE";
```

## Query 34: A10 Score by Classification

```sql
SELECT "CLASS_ASD",
       "A10_SCORE",
       COUNT(*) AS TOTAL_PARTICIPANTS
FROM "2022"
GROUP BY "CLASS_ASD", "A10_SCORE";
```

**Purpose of Queries 26–34:** To investigate how individual screening-question scores vary across the ASD and non-ASD classification groups.

# 6. AGE ANALYSIS

## Query 35: Age Summary Statistics

**Analytical question:** What is the age range of participants with recorded ages?

**Purpose:** To calculate the number of non-missing age records, the youngest age and the oldest age.

```sql
SELECT COUNT("AGE") AS TOTAL_AGE,
       MIN("AGE") AS YOUNGEST_AGE,
       MAX("AGE") AS OLDEST_AGE
FROM "2022";
```

## Query 36: Retrieve Ages in Descending Order

**Analytical question:** What are the recorded ages, starting with the oldest participants?

**Purpose:** To sort age values from highest to lowest and help identify unusual age entries.

```sql
SELECT "AGE"
FROM "2022"
ORDER BY "AGE" DESC;
```

## Query 37: Identify Ages Above 100

**Analytical question:** Are there any participants with recorded ages above 100?

**Purpose:** To investigate potentially unusual age values that may require data-quality review.

```sql
SELECT COUNT(*) AS AGE_ABOVE_100
FROM "2022"
WHERE "AGE" > 100;
```

## Query 38: Retrieve Missing Age Records

**Analytical question:** Are there participants with missing age information?

**Purpose:** To identify records where the AGE field contains a NULL value.

```sql
SELECT *
FROM "2022"
WHERE "AGE" IS NULL;
```

# 7. DATA QUALITY AND VALIDATION

## Query 39: Check Data Quality Flags

**Analytical question:** How many records fall into each data-quality category?

**Purpose:** To examine the distribution of the DATA_QUALITY_FLAG field and identify records that may need further review.

```sql
SELECT "DATA_QUALITY_FLAG",
       COUNT(*) AS TOTAL_RECORDS
FROM "2022"
GROUP BY "DATA_QUALITY_FLAG";
```

## Query 40: Identify Duplicate Participant IDs

**Analytical question:** Are there duplicate participant identification numbers?

**Purpose:** To group records by participant ID and identify IDs appearing more than once.

```sql
SELECT "ID",
       COUNT(*) AS ID_COUNT
FROM "2022"
GROUP BY "ID"
HAVING COUNT(*) > 1;
```

## Query 41: Count Non-Missing Age Records

**Analytical question:** How many participants have a recorded age within the specified valid-age criteria?

**Purpose:** To count non-missing age records and investigate the unusual age value identified during data cleaning.

**Important:** The History entry is incomplete. The original displayed condition was `AND "AGE" 383`, so the missing comparison operator must be checked before this query is treated as executable.

## Query 42: Check Missing Values Across Important Fields

**Analytical question:** How complete are the key fields in the dataset?

**Purpose:** To compare the total number of records with the number of non-missing values in important variables.

**Recovered SQL History entry:** The query began with:

```sql
SELECT COUNT(*) AS TOTAL_RECORDS,
       COUNT("RESULT") AS NON_MISSING_RESULTS,
       COUNT("AGE") AS ...
```

The remainder of the query was cut off in Oracle History and needs to be recovered before final use.

## Query 43: Check Dataset and Screening-Score Completeness

**Analytical question:** How many records contain values in the screening-score fields?

**Purpose:** To assess the completeness of screening-question responses.

**Recovered SQL History entry:** The query began with:

```sql
SELECT COUNT(*) AS TOTAL_RECORDS,
       COUNT("A1_SCORE") AS A1,
       COUNT("A2_SCORE") AS A2,
       ...
```

The remaining screening-score fields were cut off in the saved History entry. The original full query needs to be checked before reproducing it.

## Query 44: Check Unique Participants and Classification Completeness

**Analytical question:** How many unique participants and classification records are available?

**Purpose:** To compare total records, unique participant IDs and the completeness of classification information.

**Recovered SQL History entry:** The query began with:

```sql
SELECT COUNT(*) AS TOTAL_RECORDS,
       COUNT(DISTINCT "ID") AS UNIQUE_PARTICIPANTS,
       COUNT("CLASS_ASD") ...
```

The remainder was truncated in History and requires verification.

# 8. ADDITIONAL QUERIES REQUIRING VERIFICATION

The following entries appeared in Oracle History but should not be treated as final executable queries until their original forms are checked:

- A query using `A11_SCORE`. The dataset's documented screening columns are A1_SCORE through A10_SCORE, so A11_SCORE needs verification.
- A query using `"A1_Score"` rather than `"A1_SCORE"`. Quoted Oracle identifiers are case-sensitive.
- A second country analysis using `"CONTRY"` and another using `"COUNTRY"`. These names must be checked against the actual table columns.
- An incomplete query beginning `COUNT(*) AS TOTAL_PARTICIPANTS FROM "2022" GROUP BY "CONTRY_OF_RES"`. It is missing its SELECT keyword in the History display.
- A query beginning with `R`, which is not sufficient to identify the original SQL statement.
- The age condition involving 383, which is missing a comparison operator in the History display.
- The age query described verbally as containing a quarter-one condition. Its full SQL statement still needs confirmation.

# 9. OVERALL SQL ANALYSIS SUMMARY

The SQL analysis was used to explore the structure and quality of the Adult Autism Screening dataset and investigate participant demographics, screening outcomes and classification patterns.

The work included:

- Retrieving and inspecting the dataset.
- Counting total records and examining database columns.
- Analysing gender and country distributions.
- Exploring ASD and non-ASD classification counts.
- Calculating screening-score summary statistics.
- Comparing average screening results between classification groups.
- Examining individual screening-question score distributions.
- Investigating participant age values and missing records.
- Checking duplicate IDs and data-quality flags.

The analysis identified 699 records, with 512 participants classified as non-ASD and 187 classified as ASD. The average screening result was 3.63 for the non-ASD group and 8.25 for the ASD group.

These findings describe patterns in this screening dataset. They should not be interpreted as clinical diagnoses or evidence of causation.

# 10. CONCLUSION

This SQL project demonstrates the use of relational database queries to inspect, validate and analyze a health-related dataset.

SQL provided a structured approach to retrieving information, summarizing participant characteristics, examining screening scores and identifying potential data-quality concerns.

The results informed the subsequent Python analysis and Power BI dashboard, contributing to a broader data analytics workflow.

**End of SQL Analysis Documentation**