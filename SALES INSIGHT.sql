SELECT * FROM sales.transactions limit 5;
SELECT count(*) FROM sales.transactions;

SELECT sum(sales_amount) FROM sales.transactions where order_date > 31-12-2019

SELECT SUM(transactions.sales_amount)
FROM transactions
INNER JOIN date 
ON transactions.order_date=date.date 
where date.year=2020
and transactions.currency='INR\r' or transactions.currency='USD\r'

SELECT SUM(transactions.sales_amount) 
FROM transactions 
INNER JOIN date 
ON transactions.order_date=date.date 
where date.year=2020 and date.month_name="January" 
and (transactions.currency="INR\r" or transactions.currency="USD\r")
