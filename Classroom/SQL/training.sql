use favmovie;

DESC person;
desc Movies;

select * from person;
select * from `movies`; -- backtick optional on entities (table) and attributes (fields)

select max(title) from movies
where title like 'ca%' -- Wildcards
order by title
limit 5;

drop table movies;
drop table person;

drop database favmovie;

create table Movies (
	id int auto_increment,
	title varchar(20),
    genre varchar(20),
    primary key (id)
);

alter table movies
modify column title varchar(40);

update movies
set title="The Shawshank Redemption"
where title="The Shashank Redemption";

create table Person (
	id int auto_increment,
	first_name varchar(20) not null,
    last_name varchar(20),
    movie_id int,
    primary key (id),
    foreign key (movie_id) references Movies(id)
);

insert into Movies
values ('4','Forrest Gump','Drama/Romance');

insert into `Movies` (title, category)
values ('The Hateful Eight','Western/Drama');

insert into Movies(title, category)
values ('The Shashank Redemption','Drama/Crime'),
		('Catch Me If You Can','Drama/Crime'),
        ('Schindler\'s List','War/Drama'),
        ('The Pursuit of Happyiness','Drama'),
        ('The Great Gatsby','Tragedy'),
        ('Shutter Island','Thriller/Mystery'),
        ('Cars','Comdey/Family'),
        ('KungFu Panda','Comdey/Family'),
        ('Ratatouille','Comdey/Family');

insert into Person(first_name, last_name,movie_id)
values ('Kamal','Godar','4');

insert into Person(first_name, last_name,movie_id)
values ('Nischal','Budhathoki','6'),
		('Prashant','Ghimire','7'),
        ('Pawan','Poudel','8'),
        ('Pranish','Acharya','10');

SET SQL_SAFE_UPDATES = 0; -- deactivating safe update mode

delete from person
where first_name='Rajesh';

delete from movies
where title='The Hateful Eight';

create temporary table temp as (
	select title from movies
	where title like 'ca%' 
	order by title
	limit 5
);

select * from temp;

-- JOINS
SELECT * FROM movies CROSS JOIN person;

SELECT *
FROM movies 
INNER JOIN person
ON movies.id = person.movie_id;

SELECT *
FROM movies 
LEFT JOIN person
ON movies.id = person.movie_id;

SELECT *
FROM movies AS A -- Aliasing
RIGHT JOIN person AS B
ON A.id = B.movie_id;

SELECT *
FROM movies AS A
UNION
SELECT *
FROM person AS B;



