select ua.ultimateparentaccountid,asp.product as Qualitrics_Product,n.q1 as rating, ua.industry, round(asp.arr,0) as ARR, n.q1_nps_group as nps_group from 
account_spend asp inner join ultimateparent_account ua 
on asp.ultimateparentaccountid = ua.ultimateparentaccountid
inner join nps_data n on ua.ultimateparentaccountid = n.sfdcaccountid
where arr > 0;