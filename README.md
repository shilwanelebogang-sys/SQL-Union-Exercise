# 💼 SQL EXERCISE: UNION & UNION ALL

## 👤 About Me
Hi, I'm **Lebogang Shilwane**, a data-driven professional building strong skills in SQL, data analysis, and business reporting.

- 💻 SQL Environment: Databricks SQL (Apache Spark)
- 📊 Focus: Data Analysis, Reporting & Business Insights
- 🚀 Goal: Transition into a Data Analyst / BI role

---

## 📌 Project Overview

This project demonstrates practical SQL skills using `UNION` and `UNION ALL` in a real-world business context.

The dataset simulates a retail banking system (**NexBank**), where data is distributed across multiple systems such as:

- Customer accounts
- Banking products
- Staff records
- Transactions & payments
- Customer complaints
- Marketing campaigns

### 🎯 Objective
To combine datasets effectively while understanding when to:
- Remove duplicates → `UNION`
- Keep full data (including duplicates) → `UNION ALL`

---

## 🧠 Key Skills Demonstrated

✅ Writing clean and production-ready SQL  
✅ Data merging across multiple sources  
✅ Handling duplicates correctly  
✅ Creating consistent output schemas  
✅ Applying SQL to real business scenarios  
✅ Working in a cloud-based environment (Databricks)

---

## 🧩 Problem Approach

| Question | Business Scenario | SQL Concept |
|---------|-----------------|-------------|
| Q1–Q5 | Combine datasets into unique lists | UNION |
| Q6–Q10 | Merge full transactional records | UNION ALL |

---

## 📂 Project Structure

---

## 📊 Query Outputs (Screenshots)

Below are sample outputs from the queries executed in Databricks:

### Q1 – Unique Account Holders


### Q2 – Product Catalogue


### Q3 – Staff List

### Q4 – Cities Served

### Q5 – Marketing Targets


### Q6 – ATM Transactions


### Q7 – Loan Applications


### Q8 – Complaints Log


### Q9 – Payments Record


### Q10 – General Ledger Entries


---

## 🔍 Key Concepts

### ✅ UNION
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

### ✅ UNION ALL

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

## ⚠️ Important Rules

- Same number of columns in each SELECT
- Matching data types
- Column names come from the first SELECT

---

## 🚀 Business Value
This project reflects real-world use cases such as:

- 📈 Data consolidation from multiple systems
- 🏦 Banking and financial reporting
- 📊 Audit and transaction tracking
- 🎯 Marketing audience analysis
- 🧾 Payment reconciliation

---

## 📝 Bonus Insights

- Use UNION → for unique datasets
- Use UNION ALL → for full datasets
- Queries fail if column structures do not match

---

## ✅ Conclusion

- ✔ Use UNION for clean, duplicate-free results
- ✔ Use UNION ALL when every record matters
