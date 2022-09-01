use bank;

select avg(amount) from loan

select account_id from loan where amount > 151410

select account_id from loan where amount > (select avg(amount) from loan)



select * from bank.order


#Get for each account, the total amount transferred, destination bank and destination account, which are above 10K

select account_id, account_to, sum(amount) as total from bank.order
group by account_id, bank_to, account_to


select * from(
select account_id, account_to, sum(amount) as total from bank.order
group by account_id, bank_to, account_to)
as sub_result
where total > 10000

select account_id, account_to, sum(amount) as total from bank.order
group by account_id, bank_to, account_to
having sum(amount)>10000


#retrieve the orders records from the order table where the k_symbol is existed inthe trans
select distinct (k_symbol) from bank.trans
where k_symbol not in (""," ")

select * from bank.order
where k_symbol in 
(select distinct (k_symbol) from bank.trans
where k_symbol not in (""," ")) 

