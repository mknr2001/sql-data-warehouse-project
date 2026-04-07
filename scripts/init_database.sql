/*
=============================================================
Data Warehouse Layers Setup Script (MySQL)
=============================================================
Purpose:
    This script sets up the three core layers for a data warehouse
    project in MySQL. Each layer is represented as a separate database
    because MySQL does not support multiple schemas within a single database.

Data Layers:
    bronze  → stores raw, unprocessed data
    silver  → holds cleaned and transformed data
    gold    → contains final, analysis-ready data

Warning:
    Running this script will permanently delete existing databases
    with the same names if they exist. Ensure backups if needed.
*/

-- ---------------------------------------------------------
-- Step 1: Remove existing databases (if any)
-- ---------------------------------------------------------
DROP DATABASE IF EXISTS bronze;
DROP DATABASE IF EXISTS silver;
DROP DATABASE IF EXISTS gold;

-- ---------------------------------------------------------
-- Step 2: Create databases for each data layer
-- ---------------------------------------------------------
CREATE DATABASE IF NOT EXISTS bronze;
CREATE DATABASE IF NOT EXISTS silver;
CREATE DATABASE IF NOT EXISTS gold;
