SELECT * FROM sales.transactions;

SELECT count(*) FROM sales.transactions;

select * from sales.transactions limit 5;

select * from sales.transactions where market_code="Mark001";

select count(*) from sales.transactions where market_code="Mark001";

select count(*) from sales.transactions where currency="USD";

select * from sales.transactions where currency="USD";

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2020;

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2020;
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year=2019;

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

select distinct product_code from sales.transactions where market_code="Mark001";