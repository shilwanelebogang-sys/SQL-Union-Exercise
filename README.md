# SQL EXERCISE: UNION & UNION ALL

- SQL Environment: Databricks SQL (Apache Spark)
- Focus: Data Analysis, Reporting & Business Insights
- Goal: Transition into a Data Analyst / BI role

---

## Exercise Overview

This project demonstrates practical SQL skills using `UNION` and `UNION ALL` in a real-world business context.

The dataset simulates a retail banking system (**NexBank**), where data is distributed across multiple systems such as:

- Customer accounts
- Banking products
- Staff records
- Transactions & payments
- Customer complaints
- Marketing campaigns

### Objective
To combine datasets effectively while understanding when to:
- Remove duplicates → `UNION`
- Keep full data (including duplicates) → `UNION ALL`

---

## Key Skills Demonstrated

- Writing clean and production-ready SQL
- Data merging across multiple sources
- Handling duplicates correctly
- Creating consistent output schemas
- Applying SQL to real business scenarios
- Working in a cloud-based environment (Databricks)

---

## Problem Approach

| Question | Business Scenario | SQL Concept |
|---------|-----------------|-------------|
| Q1–Q5 | Combine datasets into unique lists | UNION |
| Q6–Q10 | Merge full transactional records | UNION ALL |

---

## Exercise Structure

---

## Query Outputs (Screenshots)

Below are sample outputs from the queries executed in Databricks:

### Q1 – Unique Account Holders
<img width="429" height="191" alt="image" src="https://github.com/user-attachments/assets/6e06f3a2-cbe8-42c7-b19a-f12d8b4aa942" />



### Q2 – Product Catalogue
<img width="499" height="209" alt="image" src="https://github.com/user-attachments/assets/bef625db-3e4b-40e9-80f0-5d62166d4f0f" />


### Q3 – Staff List
<img width="503" height="182" alt="image" src="https://github.com/user-attachments/assets/e48f5a24-94f6-4110-a20e-604e6781d9c4" />


### Q4 – Cities Served
<img width="415" height="186" alt="image" src="https://github.com/user-attachments/assets/35759246-133d-44b1-9224-957482384bd6" />


### Q5 – Marketing Targets
<img width="467" height="184" alt="image" src="https://github.com/user-attachments/assets/ea8aebe4-183b-489d-bba6-d8676710148d" />


### Q6 – ATM Transactions
<img width="604" height="229" alt="image" src="https://github.com/user-attachments/assets/6dd4d375-00e9-421c-8232-54f3983f0ce5" />


### Q7 – Loan Applications
<img width="631" height="235" alt="image" src="https://github.com/user-attachments/assets/71665d48-b118-4bbd-aa69-bc284328c982" />


### Q8 – Complaints Log
<img width="584" height="235" alt="image" src="https://github.com/user-attachments/assets/6e82e4db-b487-4cf3-a00e-2beb4715693c" />


### Q9 – Payments Record
<img width="578" height="237" alt="image" src="https://github.com/user-attachments/assets/47bf1e51-20b1-4c81-9802-8cc6966f427b" />


### Q10 – General Ledger Entries
<img width="671" height="234" alt="image" src="https://github.com/user-attachments/assets/8eb90cda-83dd-4df9-a93c-9d91e5f66d56" />

---

## Key Concepts

### UNION
- Combines results from multiple SELECT statements
- Removes duplicate rows
- Used for clean, unique datasets

```sql
SELECT column1
FROM table1
UNION
SELECT column1
FROM table2;
```

### UNION ALL

- Combines results from multiple SELECT statements
- Keeps all rows (including duplicates)
- Used for transaction logs and full datasets

```SQL
SELECT column1 
FROM table1
UNION ALL
SELECT 
column1 
FROM table2;
```

---

## Important Rules

- Same number of columns in each SELECT
- Matching data types
- Column names come from the first SELECT

---

## Business Value
This project reflects real-world use cases such as:

- Data consolidation from multiple systems
- Banking and financial reporting
- Audit and transaction tracking
- Marketing audience analysis
- Payment reconciliation

---

## Bonus Insights

- Use UNION → for unique datasets
- Use UNION ALL → for full datasets
- Queries fail if column structures do not match

---

## ✅ Conclusion

- ✔ Use UNION for clean, duplicate-free results
- ✔ Use UNION ALL when every record matters
