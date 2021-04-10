"""
Find the minimum, average, maximum rental price for each review qualification
category.
The review qualification category is a classification applied to each rental
property based on the number of reviews the property has. It is defined below:
    - 0: NO
    - 1-5: FEW
    - 6-15: SOME
    - 16-40: MANY
    - > 40: A LOT

table: airbnb_search_details: id, price, property_type, room_type, amenities,
    accommodates, bathrooms, bed_type, cancellation_policy, cleaning_fee, city,
    host_identity_verified, host_response_rate, host_since, neighbourhood,
    number_of_reviews, review_scores_rating, zipcode, bedrooms, beds

expected result: reviews_qualification | min_price | average_price | max_price

"""
-- reviews_qualification / min_price/ average_price/ max_price
-- assume no null, all int values
-- do classification using case when
-- group by qualification_category
-- agg min, avg, max price

WITH reviews AS (
SELECT
    CASE WHEN number_of_reviews = 0 THEN 'NO'
    WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'FEW'
    WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'SOME'
    WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'MANY'
    ELSE 'A LOT' END AS reviews_qualification,
    price
FROM airbnb_search_details
)

SELECT reviews_qualification,
    MIN(price) AS min_price,
    AVG(price) AS avg_price,
    MAX(price) AS max_price
FROM reviews
GROUP BY 1
