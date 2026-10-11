
-- project title
     -- Airbnb price , Avalibalit & Customer Reviews Analysis using SQL
create database data;

use data;

create table airbnb3(
id int ,
name varchar(40),	
host_id int,	
host_name varchar(40),
neighbourhood_group varchar(40),
neighbourhood varchar(40),	
latitude int,
longitude int,
room_type varchar(40),
price int,
minimum_nights int,
number_of_reviews int,
last_review dATE ,
reviews_per_month int,
calculated_host_listings_count int,
availability_365 int);

SELECT * FROM data.airbnb3;

-- -Q1 how many total Airbnb listing are there?---;
select count(*) as total_listing from airbnb3;

-- -Q2How many different neighbourhood are avalibel?;
select count(distinct neighbourhood) from airbnb3;

-- --Q3 what is te avarage price of ana airbnb listing?;
select avg(price) as avarage_price from airbnb3;

-- - Q4 which nighbourdhood has the most airbnb listing?;
select neighbourhood, count(*) as total_listing from airbnb3
group by neighbourhood
order by total_listing 
desc limit 5;

-- - Q5 which neighbourhood has the highest average price?
select neighbourhood ,
avg(price) as average_prices
from airbnb3 group by neighbourhood
order by average_prices 
desc
limit 3;

-- - Q6 what are the different room types?;
select room_type, count(*)  
as total_listing
from airbnb3 
group by room_type
order by total_listing
desc ;

-- - Q7 what is the avg price for each room type?;
select room_type , round(avg(price),2) 
as average_prices 
from airbnb3 
group by room_type 
order by average_prices
desc
limit 5;

-- Q8 which room_types has the highest number of reviews?;
select room_type, count(number_of_reviews)
 as hisgest_reviews
from airbnb3 
group by room_type 
order by hisgest_reviews
desc;

-- - Q9 what is the 3 most expansive airbnb listing?;
select id,name,neighbourhood, room_type , price 
from airbnb3 
order by price
desc 
limit 3;

-- - Q10 what are the 3 chepiest airbnb listings?;
select id,name,neighbourhood, room_type , price 
from airbnb3 
order by price
asc
limit 3;

-- - Q11 which Host have the most aribnb listing?;
select host_name ,host_id, count(*) as total_lasting from airbnb3
group by host_name,host_id
order by total_lasting
desc
limit 5; 

-- - Q12 which listing have the highest number of reviews?;
select id,name,neighbourhood ,number_of_reviews
from airbnb3
order by number_of_reviews
desc
limit 10;

-- - Q13 What is the avarage number of reviews for each neighbourhood ?;
select neighbourhood , round(avg(number_of_reviews),2) as avarege_reviews
from airbnb3 
group by neighbourhood 
order by avarege_reviews
desc 
limit 5;

-- - Q14 which neighbourhood has the highest total reviwws?;
select neighbourhood , sum(number_of_reviews) as total_reviews
from airbnb3 
group by neighbourhood 
order by  total_reviews
desc 
limit 5;

-- -Q15 what is the avage minimum_night requirment by room type ?;
select room_type ,avg(minimum_nights) as average_minimum_night
from airbnb3 
group by room_type 
order by average_minimum_night
desc
limit 5;

-- -Q16 which neighbouhood have the highest average availlability?;
select neighbourhood ,avg(availability_365) as average_avalibality
from airbnb3
group by neighbourhood 
order by average_avalibality
desc
limit 5;

-- -17 How many listing are avaliable for more than 300 days?;
select count(*) as highly_avalibality_listing 
from airbnb3 
where availability_365>300;

-- - Q18 what is the price category of airbnb listing?;
select 
case 
    when price<100
                 then "budget"
    when price between 101 and 200
			     then "mid_rand"
    when price between 201 and 500
			      then "premium"
                  else "luxuary"
                  end as price_category,count(*) as total_listing
  from airbnb3
  where price >0
  group by price_category
  order by total_listing
  desc;
  
  -- -Q19 Which neighbourhood has the best combimmation of  reasonable price and high reviews?;
  select neighbourhood  ,avg(price) as avrag_price ,avg(number_of_reviews)
  as Resnable_reviews from airbnb3 
  where price>0
  group by neighbourhood 
  having avg(price)<200
  and avg(number_of_reviews)>50
  order by Resnable_reviews
  desc;
  
  -- - Q20 Which neighbourood could have potential supply problem?
  select neighbourhood ,avg(number_of_reviews) as avg_review,
  avg(availability_365) as avg_avalibality from airbnb3
  group by neighbourhood
  having avg(availability_365)>200 and avg(number_of_reviews)<50
  order by avg_avalibality
  desc;