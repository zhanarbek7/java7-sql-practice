-- 1 variant

select distinct email from Person p1
where (select count(*) from Person p2 where p2.email = p1.email )>1;

-- 2 variant

select email from(
select email, count(email) as num from Person
group by email) as statistic
where num > 1;

-- 3 variant

select email from Person
group by email
having count(Email) > 1;