#1.In the table actor, what last names are not repeated? For example if you would sort the data in the table actor by last_name, 
#you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. 
#These three actors have the same last name. So we do not want to include this last name in our output. 
#Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
use sakila;

select * from actor
order by last_name asc

SELECT last_name FROM actor
GROUP BY last_name 
HAVING COUNT(*)>1;

SELECT last_name FROM actor
GROUP BY last_name 
HAVING COUNT(*)=1

#2.Which last names appear more than once? 
#We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once

SELECT last_name FROM actor
GROUP BY last_name 
HAVING COUNT(*)>1;

#3.Using the rental table, find out how many rentals were processed by each employee.

select * from rental;
select rental_id from rental;

select staff_id, count(staff_id) total_rental from rental
group by staff_id;

#4.Using the film table, find out how many films there are of each rating.

select * from film;
select count(title), rating from film
group by rating;


#5.What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select round(avg(length),2), rating from film
group by rating;

#6.Which kind of movies (rating) have a mean duration of more than two hours?
select * from film;

select avg(length) from film;

select distinct rating from film

select rating from film 
group by rating
having avg(length) > 120 





