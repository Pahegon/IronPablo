use bank;

select * from account ac join loan l on ac.account_id = l.account_id

select * from account join loan using (account_id)
where status = "A"

select * from account left join loan using (account_id)

