create table World(
                      id serial primary key,
                      name varchar(255),
                      continent varchar(255),
                      area int,
                      population int
);

insert into World(name, continent, area, population)
VALUES ('Afghanistan', 'Asia', 652230, 25500100),
       ('Albania','Europe', 28748, 2831741),
       ('Algeria','Africa', 28748, 2831741),
       ('Andorra','Europe', 28748, 2831741),
       ('Angola','Europe', 28748, 2831741);

select name, continent from world
where area > 300000 and population > 25000000;