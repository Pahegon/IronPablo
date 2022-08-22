use bank;

#Q1.Get the id values of the first 5 clients from district_id with a value equals to 1.


select district_id, client_id from client
where district_id=1 					
order by client_id asc limit 5; #First we get the client_id and distric_id, looking for values district_id=1 and ordered by client_id.
								#Finally we define the limit in first 5 rows
	

#Query 2. In the client table, get an id value of the last client where the district_id equals to 72.

select district_id, client_id from client
where district_id = 72
order by client_id desc limit 1; #We apply the last funtion but only with district_id=72, desc and limit =1


#Query 3.Get the 3 lowest amounts in the loan table.
select amount from loan
order by amount asc limit 3;


#Query 4. What are the possible values for status, ordered alphabetically in ascending order in the loan table?
select DISTINCT status from loan 
order by status asc;

#Query 5. What is the loan_id of the highest payment received in the loan table?
select loan_id,payments from loan
order by payments desc limit 1

#Query 6.What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
select account_id,amount from loan
order by account_id asc limit 5

#Query 7. What are the top 5 account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
select account_id, amount, duration from loan
where duration=60
order by amount asc limit 5

#Query 8
#What are the unique values of k_symbol in the order table?
#Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.
select DISTINCT k_symbol from `order` 
order by k_symbol;

#Query 9.In the order table, what are the order_ids of the client with the account_id 34?
select order_id, account_id from `order`
where account_id=34

#Query 10.In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
select  DISTINCT account_id from `order`
where order_id between 29540 and 29560

#Query 11.In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
select amount, account_to from `order`
where account_to = 30067122

#Query 12.In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
select trans_id, date ,type, amount from trans
where account_id = 793
order by date desc limit 10

#Optional

#Query 13.In the client table, of all districts with a district_id lower than 10,  ? Show the results sorted by the district_id in ascending order.
SELECT 
    district_id,
    COUNT(*) AS clients
FROM client
where district_id < 10
GROUP BY district_id
order by district_id asc 
