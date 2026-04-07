# 📊 Data Warehouse & Analytics Project (MySQL)

Welcome to my **Data Warehouse and Analytics Project**! 🚀

This project showcases the end-to-end process of designing and building a modern data warehouse, followed by generating meaningful business insights. It is part of my learning journey, where I implemented industry-standard practices using **MySQL**.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture** approach, structured into three layers:

![Data Architecture](docs/data_architecture.png)

### 🟫 Bronze Layer (Raw Data)

* Stores raw data ingested directly from source systems
* Data is loaded from CSV files into the database without transformation
* Acts as the single source of truth

### ⬜️ Silver Layer (Cleaned Data)

* Performs data cleaning, validation, and standardization
* Handles missing values, duplicates, and inconsistencies
* Prepares structured data for downstream processing

### 🟨 Gold Layer (Business-Ready Data)

* Contains curated datasets optimized for analytics
* Implements a **star schema** with fact and dimension tables
* Supports reporting and business intelligence use cases

---

## 📖 Project Overview

In this project, I worked on:

### 🔧 Data Engineering

* Designing a scalable data warehouse using **MySQL**
* Building ETL pipelines to ingest and transform data
* Integrating multiple data sources into a unified model

### 📊 Data Modeling

* Creating fact and dimension tables
* Structuring data for efficient analytical queries
* Applying best practices in schema design

### 📈 Analytics & Reporting

* Writing SQL queries to extract insights
* Analyzing:

  * Customer behavior
  * Product performance
  * Sales trends
* Enabling data-driven decision-making

---

## 🎯 Skills Demonstrated

This project highlights my capabilities in:

* SQL Development (MySQL)
* Data Engineering Concepts
* ETL Pipeline Design
* Data Modeling (Star Schema)
* Data Analysis & Reporting

---

## 🚀 Project Requirements

### 🏗️ Data Warehouse Development

**Objective:**
Build a centralized data warehouse to analyze sales data and support business insights.

**Key Tasks:**

* **Data Sources:** Import data from ERP and CRM systems (CSV format)
* **Data Cleaning:** Resolve data quality issues before analysis
* **Data Integration:** Merge datasets into a single analytical model
* **Scope:** Focus on the most recent dataset (no historical tracking)
* **Documentation:** Maintain clear and structured documentation

---

### 📊 Analytics & Reporting

**Objective:**
Develop SQL-based analysis to uncover insights into:

* Customer purchasing patterns
* Product-level performance
* Sales trends over time

These insights help stakeholders make informed business decisions.

---

## 📂 Repository Structure

```
data-warehouse-project/
│
├── datasets/                    # Raw ERP and CRM datasets (CSV files)
│
├── docs/                        # Documentation and design files
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── naming-conventions.md
│
├── scripts/                     # SQL scripts for ETL and transformations
│   ├── bronze/                 # Raw data ingestion scripts
│   ├── silver/                 # Data cleaning and transformation scripts
│   ├── gold/                   # Analytical model (fact & dimension tables)
│
├── tests/                       # Data validation and testing scripts
│
├── README.md                    # Project documentation
├── LICENSE                      # License details
├── .gitignore                   # Ignored files for version control
└── requirements.txt             # Project dependencies
```

---

## 🧠 Learning Note

This project was developed as part of my hands-on learning in data engineering and analytics. While inspired by industry practices and tutorials, I implemented the complete workflow independently using **MySQL**, adapting concepts to strengthen my understanding.

---

## 🛡️ License

This project is licensed under the **MIT License**.
You are free to use and modify it with proper attribution.
