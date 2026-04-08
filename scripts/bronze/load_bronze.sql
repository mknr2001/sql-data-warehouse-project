/*
===============================================================================
Script: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This script loads data from CSV files into the 'bronze' schema tables.
    Actions performed for each table:
        - Truncate the existing table to remove old data.
        - Load fresh data from the corresponding CSV file using LOAD DATA LOCAL INFILE.
        - Tables covered:
            - CRM: crm_cust_info, crm_prd_info, crm_sales_details
            - ERP: erp_cust_az12, erp_loc_a101, erp_px_cat_g1v2

Usage Instructions:
    1. Make sure the CSV file paths are correct and accessible from the MySQL server.
    2. Execute this script in MySQL client or Workbench.
    3. Ensure 'LOCAL INFILE' is enabled for your MySQL connection:
       - Use: mysql --local-infile=1 -u username -p
===============================================================================
*/

-- ================================
-- CRM Tables
-- ================================

-- Truncate and load data into crm_cust_info
TRUNCATE TABLE bronze.crm_cust_info;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Truncate and load data into crm_prd_info
TRUNCATE TABLE bronze.crm_prd_info;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Truncate and load data into crm_sales_details
TRUNCATE TABLE bronze.crm_sales_details;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


-- ================================
-- ERP Tables
-- ================================

-- Truncate and load data into erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Truncate and load data into erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Truncate and load data into erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

LOAD DATA LOCAL INFILE '/Users/kedarnadh/Documents/Data Engineering/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- ================================
-- End of Bronze Layer Load Script
-- ================================
