-- Find the business and the review_text that received the highest number of
-- 'cool' votes

"""
yelp_reviews: business_name | review_id | user_id | stars| review_date |
review_text | funy | useful | cool
expected result: business name | review text
"""

-- order by cool
-- select business and review text
-- limit 1

SELECT business_name,
    review_text
FROM yelp_reviews
ORDER BY cool DESC
LIMIT 1
