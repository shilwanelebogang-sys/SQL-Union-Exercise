
-- =========================================
-- VIEW ALL TABLES (DATA PREVIEW)
-- =========================================


-- Retrieves all records from Sandton branch accounts
SELECT *
FROM workspace.default.branch_sandton_accounts;

-- Retrieves all records from Rosebank branch accounts
SELECT *
FROM workspace.default.branch_rosebank_accounts;

-- Retrieves all savings account products
SELECT *
FROM workspace.default.savings_products;

-- Retrieves all current account products
SELECT *
FROM workspace.default.current_products;

-- Retrieves all staff working in Retail Banking
SELECT *
FROM workspace.default.retail_banking_staff;

-- Retrieves all staff working in Corporate Banking
SELECT *
FROM workspace.default.corporate_banking_staff;

-- Retrieves all cities served by mobile branches
SELECT *
FROM workspace.default.mobile_branch_cities;

-- Retrieves all cities served by digital branch
SELECT *
FROM workspace.default.digital_branch_cities;

-- Retrieves customers targeted via push notifications
SELECT *
FROM workspace.default.push_notification_targets;

-- Retrieves customers targeted via in-app banners
SELECT *
FROM workspace.default.inapp_banner_targets;

-- Retrieves all ATM transactions from machine ATM 01
SELECT *
FROM workspace.default.atm01_transactions;

-- Retrieves all ATM transactions from machine ATM 02
SELECT *
FROM workspace.default.atm02_transactions;

-- Retrieves loan applications from Gauteng region
SELECT *
FROM workspace.default.gauteng_loan_applications;

-- Retrieves loan applications from Western Cape region
SELECT *
FROM workspace.default.western_cape_loan_applications;

-- Retrieves complaints submitted via email
SELECT *
FROM workspace.default.email_complaints;

-- Retrieves complaints submitted via mobile app
SELECT *
FROM workspace.default.app_complaints;

-- Retrieves all April payment records
SELECT *
FROM workspace.default.april_payments;

-- Retrieves all May payment records
SELECT *
FROM workspace.default.may_payments;

-- Retrieves all debit entries from the ledger
SELECT *
FROM workspace.default.debit_entries;

-- Retrieves all credit entries from the ledger
SELECT *
FROM workspace.default.credit_entries;


-- =========================================================
-- Q1: Combine account holders from two branches (UNIQUE LIST)
-- Business Goal:
-- Create a single list of all customers across branches
-- without duplicates.
-- =========================================================
SELECT account_id,
       account_holder,
       'Johannesburg' AS city
FROM workspace.default.branch_sandton_accounts

UNION

SELECT account_id,
       account_holder,
       'Johannesburg' AS city
FROM workspace.default.branch_rosebank_accounts;


-- =========================================================
-- Q2: Build a unique product catalogue
-- Business Goal:
-- Combine savings and current account products into one
-- unified list with no duplicates.
-- =========================================================
SELECT product_code,
       product_name,
       'Bank Product' AS product_type
FROM workspace.default.savings_products

UNION

SELECT product_code,
       product_name,
       'Bank Product' AS product_type
FROM workspace.default.current_products;


-- =========================================================
-- Q3: Generate a unique staff list
-- Business Goal:
-- Identify all employees working across Retail and Corporate
-- teams, ensuring no duplicate records.
-- =========================================================
SELECT staff_id,
       staff_name,
       'unknown@bank.co.za' AS email
FROM workspace.default.retail_banking_staff

UNION

SELECT staff_id,
       staff_name,
       'unknown@bank.co.za' AS email
FROM workspace.default.corporate_banking_staff;


-- =========================================================
-- Q4: List all cities served by the bank
-- Business Goal:
-- Combine mobile and digital service regions into a single
-- unique dataset of cities.
-- =========================================================
SELECT city_code,
       city_name,
       'South Africa' AS region
FROM workspace.default.mobile_branch_cities

UNION

SELECT city_code,
       city_name,
       'South Africa' AS region
FROM workspace.default.digital_branch_cities;


-- =========================================================
-- Q5: Create a unique marketing audience list
-- Business Goal:
-- Identify all customers targeted by marketing campaigns
-- (push + in-app), removing duplicates.
-- =========================================================
SELECT customer_id,
       customer_name,
       'Marketing' AS segment
FROM workspace.default.push_notification_targets

UNION

SELECT customer_id,
       customer_name,
       'Marketing' AS segment
FROM workspace.default.inapp_banner_targets;


-- =========================================================
-- Q6: Combine ATM transaction logs (KEEP ALL RECORDS)
-- Business Goal:
-- Create a full transaction log including duplicates for
-- fraud detection and auditing purposes.
-- =========================================================
SELECT txn_id AS transaction_id,
       account_id,
       amount,
       '2026-06-07' AS transaction_date
FROM workspace.default.atm01_transactions

UNION ALL

SELECT txn_id AS transaction_id,
       account_id,
       amount,
       '2026-06-07' AS transaction_date
FROM workspace.default.atm02_transactions;


-- =========================================================
-- Q7: Merge loan applications across regions
-- Business Goal:
-- Combine all loan applications from Gauteng and Western Cape
-- without removing duplicates.
-- =========================================================
SELECT app_id AS application_id,
       customer_id,
       loan_type,
       1000 AS amount_requested
FROM workspace.default.gauteng_loan_applications

UNION ALL

SELECT app_id,
       customer_id,
       loan_type,
       1000 AS amount_requested
FROM workspace.default.western_cape_loan_applications;


-- =========================================================
-- Q8: Combine customer complaints
-- Business Goal:
-- Maintain a complete record of all complaints received via
-- different channels (Email + App).
-- =========================================================
SELECT complaint_id,
       customer_id,
       'Email' AS category,
       '2026-06-07' AS logged_date
FROM workspace.default.email_complaints

UNION ALL

SELECT complaint_id,
       customer_id,
       'App' AS category,
       '2026-06-07' AS logged_date
FROM workspace.default.app_complaints;


-- =========================================================
-- Q9: Consolidate payment records
-- Business Goal:
-- Merge April and May payments into one dataset for financial
-- reporting and reconciliation.
-- =========================================================
SELECT payment_id,
       account_id,
       amount,
       '2026-04-01' AS payment_date
FROM workspace.default.april_payments

UNION ALL

SELECT payment_id,
       account_id,
       amount,
       '2026-05-25' AS payment_date
FROM workspace.default.may_payments;


-- =========================================================
-- Q10: Build a general ledger
-- Business Goal:
-- Combine debit and credit entries into a single dataset for
-- auditing and financial tracking.
-- =========================================================
SELECT entry_id,
       account_id,
       entry_type,
       1000 AS amount,
       '2026-05-15' AS entry_date
FROM workspace.default.debit_entries

UNION ALL

SELECT entry_id,
       account_id,
       entry_type,
       2000 AS amount,
       '2026-06-25' AS entry_date
FROM workspace.default.credit_entries;


-- ============================================
-- BONUS ANSWERS
-- ============================================

-- Bonus 01:
-- Use UNION because the analyst wants a unique list of customers.
-- Duplicates must be removed so that each customer appears only once.

-- Bonus 02:
-- Use UNION ALL because the auditing team needs every transaction recorded.
-- Duplicates must be included to ensure accurate counting of all transactions.

-- Bonus 03:
-- The query fails because the SELECT statements return a different number of columns.
-- In a UNION operation, both queries must return the same number of columns with matching data types. To fix this, ensure    both SELECT statements have the same number of columns in the same order.
