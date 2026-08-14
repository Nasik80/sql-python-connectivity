create database MovieStreamDB;
use MovieStreamDB;

create table Movies(Movie_ID int primary key , Movie_Name varchar(50),Genre varchar(30) ,Language varchar(30),Rating float ,Duration_Min int,Release_Year int);

insert into Movies (Movie_ID, Movie_Name, Genre, Language, Rating, Duration_Min, Release_Year)
values (101, 'Leo', 'Action', 'Tamil', 8.2, 164, 2023),
       (102, 'Premalu', 'Romance', 'Malayalam', 8.5 ,156, 2024),
       (103, 'KGF', 'Action', 'Kannada', 8.4 ,168, 2018),
       (104, 'Drishyam', 'Thriller', 'Malayalam' ,8.6, 160, 2013),
       (105, 'Jawan', 'Action', 'Hindi', 7.4, 169, 2023),
       (106, "96", 'Romance', 'Tamil', 8.5 ,158 ,2018);

select *
from Movies;

select Movie_Name,Rating
from Movies;

select distinct Language
from Movies;

select distinct Genre
from Movies;

select *
from Movies order by Rating limit 3;

select Movie_Name, Rating
from Movies where Rating > 8.0;

select Movie_Name,Release_Year
from Movies where Release_Year > 2020;

select Movie_Name, Genre
from Movies where Genre='action';

select Movie_Name,Rating
from Movies order by Rating desc ;

select Movie_Name,Release_Year
from Movies order by Release_Year asc ;

select max(Rating)
from Movies;

select max(Duration_Min)
from Movies;

select avg(Rating)
from Movies;

select Genre, count(*)
from Movies group by Genre;

select Language, avg(Rating)
from Movies group by Language;

select Genre, count(*)
from Movies group by Genre having count(*) > 1

select Language, count(*)
from Movies group by Language having count(*) > 1