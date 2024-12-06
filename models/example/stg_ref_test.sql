select s.sellerid,
u.customer_name,
sum(s.qtysold)
from "sample_data_dev"."tickit"."sales" s
JOIN 
{{ref("stg_user")}} u on s.sellerid = u.userid
group by s.sellerid, u.customer_name