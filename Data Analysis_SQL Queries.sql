
select * from SPACE where rownum<=5;

select count(*) from SPACE;

select sum(mass) as Total_Meteorite_Weight,year from SPACE group by year order by sum(mass) desc fetch first 5 rows only;

select nametype,count(nametype) as Count from SPACE group by nametype;

select fall,count(fall) from SPACE group by fall;

select recclass,count(recclass) as Count from SPACE group by recclass  order by count(recclass) desc fetch first 9 rows only;

select sum(mass) as Total_Meteorite_Weight,fall from SPACE group by fall order by sum(mass) desc; 


