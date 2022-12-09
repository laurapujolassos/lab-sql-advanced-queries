# Lab | SQL Advanced queries
# 1. List each pair of actors that have worked together.
select * from sakila.film_actor fa1
join sakila.film_actor fa2
on fa1.film_id = fa2.film_id
and fa1.actor_id <> fa2.actor_id;

#2. For each film, list actor that has acted in more films.
select actor_id, count(film_id) from sakila.film_actor
group by actor_id
order by count(film_id) desc;

select title, actor_id from sakila.film f
join sakila.film_actor fa on f.film_id=fa.film_id
where actor_id in ( select fa.film_id from (select actor_id, count(film_id) from sakila.film_actor
group by actor_id
order by count(film_id) desc) a1
   
);


