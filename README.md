# 📊 Bank Loan Analysis

## Overview

The **Bank Loan Analysis ** is a Business Intelligence project developed using **SQL Server** and **Microsoft Power BI** to analyze bank loan data and provide meaningful insights into lending performance, borrower behavior, and portfolio health.

The project transforms raw loan data into an interactive dashboard that enables users to monitor key performance indicators, evaluate loan quality, identify trends, and support data-driven financial decisions.

---

## Dataset Summary

* **Rows:** 38,576

* **Columns:** 24

* **Key Features:**

  * Borrower information (Annual Income, Employment Length, Employment Title, Home Ownership, Verification Status)
  * Loan details (Loan Amount, Installment, Interest Rate, Loan Term, Application Type)
  * Loan performance (Loan Status, Total Payment, Last Payment Date, Next Payment Date, Last Credit Pull Date)
  * Credit information (Loan Grade, Sub-grade, Debt-to-Income Ratio, Total Credit Accounts)
  * Geographic and loan purpose information (State, Loan Purpose)

* **Loan Status Distribution:**

  * Fully Paid: 32,145
  * Charged Off: 5,333
  * Current: 1,098

* **Missing Data:**

  * Employment Title (`emp_title`): 1,438 missing values
  * All remaining columns contain complete data.

---

## Objectives

* Analyze overall loan portfolio performance.
* Monitor lending and repayment trends.
* Compare good loans and bad loans.
* Evaluate borrower characteristics and loan distribution.
* Build an interactive dashboard for business reporting and decision-making.

---

## Tools & Technologies

* Microsoft Power BI
* SQL Server
* SQL
* Power Query
* DAX
* Data Modeling
* Data Visualization

---

## Dashboard Features

### Executive Summary

Provides a high-level overview of the loan portfolio with key metrics such as:

* Total Loan Applications
* Total Funded Amount
* Total Amount Received
* Average Interest Rate
* Average Debt-to-Income Ratio
* Month-to-Date (MTD) Performance
* Month-over-Month (MoM) Growth

### Loan Quality Analysis

Classifies loans into **Good Loans** and **Bad Loans** based on their current status.

The dashboard displays:

* Good Loan Percentage
* Bad Loan Percentage
* Good Loan Applications
* Bad Loan Applications
* Total Funded Amount by Loan Quality
* Total Amount Received by Loan Quality

This analysis helps evaluate the health of the lending portfolio and identify potential credit risks.

### Loan Distribution Analysis

The dashboard provides detailed analysis across multiple business dimensions, including:

* Loan Purpose
* Loan Term
* Home Ownership
* Employment Length
* State
* Loan Grade

Interactive slicers allow users to filter and explore loan performance based on different borrower and loan attributes.

### Trend Analysis

Visualizations help identify lending and repayment patterns over time, including:

* Monthly Loan Applications
* Monthly Funded Amount
* Monthly Amount Received
* Month-over-Month Performance
* Portfolio Growth Trends

### Detailed Loan Records

A dedicated details page enables users to explore individual loan records with information such as:

* Loan ID
* Issue Date
* Loan Status
* Loan Grade
* Interest Rate
* Installment Amount
* Loan Purpose
* Home Ownership
* Funded Amount
* Amount Received

---

## Business Value

This dashboard enables financial institutions to:

* Monitor lending performance in real time.
* Track repayment trends across the loan portfolio.
* Identify high-risk loans through loan quality analysis.
* Understand borrower demographics and loan characteristics.
* Support strategic lending decisions using interactive analytics.
* Improve portfolio monitoring through data-driven insights.

---

## Project Workflow

1. Imported loan data into SQL Server.
2. Cleaned and validated the dataset using SQL.
3. Connected SQL Server to Power BI.
4. Performed data transformation using Power Query.
5. Created calculated measures using DAX.
6. Designed an interactive dashboard with KPIs, charts, slicers, and drill-through reports.
7. Published a business-ready analytics solution for loan portfolio monitoring.

---

## Key Skills Demonstrated

* Business Intelligence
* SQL Querying
* Data Cleaning
* Data Modeling
* DAX Calculations
* Power Query
* Dashboard Development
* KPI Reporting
* Financial Data Analysis
* Interactive Data Visualization

---

## Project Structure

```text
Bank-Loan-Analysis/
│
├── bank_loan_analysis.pbix
├── SQLQuery.sql
├── financial_loan.csv
├── README.md
└── Images/
    ├── Summary Dashboard.png
    ├── Overview Dashboard.png
    └── Details Dashboard.png
```

---

## Dashboard Preview

Include screenshots of your Power BI dashboards in the `Images` folder and display them here.

* Executive Summary Dashboard
* Overview Dashboard
* Detailed Loan Analysis Dashboard

---

## Future Enhancements

* Add machine learning models for loan default prediction.
* Publish the dashboard to Power BI Service.
* Enable scheduled data refresh.
* Integrate additional financial datasets.
* Develop borrower credit risk scoring.

---

## Author

**Prashanth Reddy Matta**

* SQL
* Microsoft Power BI
* Data Analytics
* Business Intelligence
* Dashboard Development

