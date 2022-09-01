use bank;

select * from loan


select account_id, sum(amount) as total_borrowed, sum(payments) as total_payments from bank.loan
group by account_id
having total_payments>1000

select loan_id, sum(amount) as total_borrowed, sum(payments) as total_payments from bank.loan
group by loan_id

select duration, sum(amount) as total_borrowed from bank.loan
group by duration
having duration <= 24

select duration, sum(amount) as total_borrowed from bank.loan
where duration <= 24
group by duration

select duration, sum(amount) as total_borrowed from bank.loan
group by duration
having sum(amount)<= 100000000

select count(*) from loan


create temporary table temp select distinct k_symbol from bank.trans where k_symbol <> " "

select * from temp

drop table temp 

select * from bank.order where k_symbol in (select * from temp)

select * from bank.trans