with mart_full_moon_dates as (select * from {{ ref("mart_full_moon_dates") }})
select is_full_moon, review_sentiment, count(*) as reviews
from mart_full_moon_dates
group by is_full_moon, review_sentiment
order by is_full_moon, review_sentiment
