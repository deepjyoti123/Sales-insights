-- Customers table  
SELECT * FROM sales.customers;

-- Count of Customers 
SELECT count(*) FROM sales.customers;

-- Sales transactions at Chennai (Mark001) 
SELECT * FROM sales.transactions where sales.transactions.market_code='Mark001';

-- Products sold at Chennai
SELECT distinct sales.transactions.product_code FROM sales.transactions where sales.transactions.market_code='Mark001';

-- Transactions happened in USD
SELECT * from sales.transactions where sales.transactions.currency="USD";

-- Transactions in 2020 join by date table
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date=sales.date.date where sales.date.year=2020;

-- Total Revenue 
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions;

-- Total revenue in year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date=sales.date.date where sales.date.year=2020 and 
sales.transactions.currency='INR\r' or sales.transactions.currency='USD\r';

-- Total Revenue by Every year
SELECT SUM(sales.transactions.sales_amount),sales.date.year FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date=sales.date.date where 
sales.transactions.currency='INR\r' or sales.transactions.currency='USD\r' group by sales.date.year;

-- Total revenue in year 2020, January Month
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date WHERE sales.date.year = 2020 AND 
sales.date.month_name = 'January' AND 
(sales.transactions.currency = 'INR\r' OR sales.transactions.currency = 'USD\r');

-- Total Revenue in year 2020 by Month
SELECT SUM(sales.transactions.sales_amount),sales.date.month_name  FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date WHERE sales.date.year = 2020 AND 
(sales.transactions.currency = 'INR\r' OR sales.transactions.currency = 'USD\r') group by sales.date.month_name;

-- Total Revenue in year 2019 by Month
SELECT SUM(sales.transactions.sales_amount),sales.date.month_name  FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date WHERE sales.date.year = 2019 AND 
(sales.transactions.currency = 'INR\r' OR sales.transactions.currency = 'USD\r') group by sales.date.month_name;

-- Total Revenue in year 2018 by Month
SELECT SUM(sales.transactions.sales_amount),sales.date.month_name  FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date WHERE sales.date.year = 2018 AND 
(sales.transactions.currency = 'INR\r' OR sales.transactions.currency = 'USD\r') group by sales.date.month_name;

-- Total Revenue in year 2017 by Month
SELECT SUM(sales.transactions.sales_amount),sales.date.month_name  FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date WHERE sales.date.year = 2017 AND 
(sales.transactions.currency = 'INR\r' OR sales.transactions.currency = 'USD\r') group by sales.date.month_name;


-- Total revenue in year 2020 in Chennai
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON 
sales.transactions.order_date=sales.date.date where sales.date.year=2020 and 
sales.transactions.market_code="Mark001";

-- Total Revenue in year 2020 by Markets
SELECT SUM(sales.transactions.sales_amount),sales.transactions.market_code,sales.markets.markets_name
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
INNER JOIN sales.markets ON sales.transactions.market_code=sales.markets.markets_code
where sales.date.year=2020 group by 
sales.transactions.market_code order by sales.transactions.market_code;

-- Total Revenue in year 2019 by Markets
SELECT SUM(sales.transactions.sales_amount),sales.transactions.market_code,sales.markets.markets_name
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
INNER JOIN sales.markets ON sales.transactions.market_code=sales.markets.markets_code
where sales.date.year=2019 group by 
sales.transactions.market_code order by sales.transactions.market_code;

-- Total Revenue in year 2018 by Markets
SELECT SUM(sales.transactions.sales_amount),sales.transactions.market_code,sales.markets.markets_name
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
INNER JOIN sales.markets ON sales.transactions.market_code=sales.markets.markets_code
where sales.date.year=2018 group by 
sales.transactions.market_code order by sales.transactions.market_code;

-- Total Revenue in year 2017 by Markets
SELECT SUM(sales.transactions.sales_amount),sales.transactions.market_code,sales.markets.markets_name
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
INNER JOIN sales.markets ON sales.transactions.market_code=sales.markets.markets_code
where sales.date.year=2017 group by 
sales.transactions.market_code order by sales.transactions.market_code;

-- Total Revenue in year Chennai by year
SELECT SUM(sales.transactions.sales_amount) as Revenue,sales.date.year
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
where sales.transactions.market_code="Mark001" group by 
sales.date.year;


