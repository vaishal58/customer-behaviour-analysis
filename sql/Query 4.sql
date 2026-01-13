-- top 5 product highest purhcase when discount applied  
select item_purchased,
sum(100* case when discount_applied='Yes' then 1 else 0 end) / count(*) as dis_rate
from customer
group by item_purchased
order by dis_rate desc
limit 5