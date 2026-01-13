-- check how many customer are subscribed and how many are not
select subscription_status,
count(customer_id)
 from customer
group by subscription_status