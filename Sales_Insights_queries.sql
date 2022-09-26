SELECT * FROM sales.transactions;

SELECT count(*) FROM sales.transactions;

SELECT * FROM sales.customers;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.transactions where market_code="Mark001";

SELECT count(*) FROM sales.transactions where market_code="Mark001";

SELECT * FROM sales.transactions where currency="USD";

select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date; 

SELECT sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2020;

SELECT sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2020;

SELECT sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2019;

SELECT sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date=sales.date.date where sales.date.year=2020 and sales.transactions.market_code="Mark001";

select distinct product_code from sales.transactions where market_code="Mark001";

SELECT * FROM sales.transactions where sales_amount<=0;

SELECT distinct(sales.transactions.currency) FROM sales.transactions;

SELECT count(*) FROM sales.transactions where sales.transactions.currency='INR\r';

SELECT count(*) FROM sales.transactions where sales.transactions.currency='INR';

SELECT count(*) FROM sales.transactions where sales.transactions.currency='USD\r';

SELECT count(*) FROM sales.transactions where sales.transactions.currency='USD';

SELECT * FROM sales.transactions where sales.transactions.currency='USD\r' or sales.transactions.currency='USD';
select * from sales.date where year='2020';
select count(*) from sales.date where year='2020';
SELECT count(*) FROM sales.date;