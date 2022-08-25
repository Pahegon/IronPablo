use bank;

select avg(amount) from loan

select account_id from loan where amount > 151410

select account_id from loan where amount > (select avg(amount) from loan)

