-----------------------
select * from financial_loan;
-------------------------------------
select count(id) as total_applications from financial_loan;
-----------------Total Apllications---------------------------
select count(id) as mtd_total_applications from financial_loan
where month(issue_date)=12 and year(issue_date)=2021

select count(id) as pmtd_total_applications from financial_loan
where month(issue_date)=12 and year(issue_date)=2021
--------------------------------------------------
SELECT
    MONTH(issue_date) AS month_no,
    COUNT(id) AS total_applications
FROM financial_loan
WHERE YEAR(issue_date) = 2021
GROUP BY MONTH(issue_date)
ORDER BY MONTH(issue_date);

select sum(loan_amount) as total_funded_amount from financial_loan;

select sum(loan_amount) as mtd_total_funded_amount from financial_loan
where month(issue_date)=12 and year(issue_date)=2021;

select sum(loan_amount) as pmtd_total_funded_amount from financial_loan
where month(issue_date)=11 and year(issue_date)=2021;
-----------------------------------------------------------------
select sum(total_payment) as total_amount_received from financial_loan;

select sum(total_payment) as mtd_total_amount_received from financial_loan
where month(issue_date)=12 and year(issue_date)=2021;

select sum(total_payment) as pmtd_total_amount_received from financial_loan
where month(issue_date)=11 and year(issue_date)=2021;
------------------------------------------------------------------------
select round(avg(dti),4) * 100 as avg_dti from financial_loan;

select round(avg(dti),4) * 100 as avg_dti from financial_loan
where month(issue_date)=12 and year(issue_date)=2021;

select round(avg(dti),4) * 100 as avg_dti from financial_loan
where month(issue_date)=11 and year(issue_date)=2021;
use [BankLoan DB];
go
-------------------------------------------------------------
----good loan vs bad loan
select count(case when loan_status ='Fully Paid' or loan_status = 'Current' then id end) *100
/
count(id) as good_loan_percentage from financial_loan;

select  count(id) as good_loan_applications from financial_loan 
where loan_status ='Fully Paid' or loan_status ='Current';

select sum(loan_amount) as good_loan_funeded_amount from financial_loan 
where loan_status ='Fully Paid' or loan_status ='Current';

select sum(total_payment) as good_loan_received_amount from financial_loan 
where loan_status ='Fully Paid' or loan_status ='Current';
-------------------------bad loan--------------------------------------------
select count(case when loan_status ='charged off' then id end) * 100
/
count(id) as bad_loan_percentage from financial_loan;

SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off';
------------------loan status-------------------------------------------
SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan
    GROUP BY
        loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status
-----------------month--------------------------------------------
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)
------------------------state-----------------------------------------
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state
---------------trem------------------------------------------------
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term;
--------------------employee length-------------------------------------
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length;
--------------------purpose---------------------------------------------
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;
-----------------------Home Ownership--------------------------------------
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership



