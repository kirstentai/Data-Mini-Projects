"""
Write a sql query to find out the overall friend acceptance rate for each day.
friend_requests: ds| sender | receiver | action (sent, accepted, rejected)

ds | friend_acceptance_rate <- accepted/total *100

"""
-- group by ds
-- accepted/count(actions) * 100


SELECT ds,
    COUNT(CASE WHEN action = 'accepted' THEN 1
    ELSE NULL END) * 1.00 / COUNT(action) * 100 AS perc_acceptance
FROM friend_requests
GROUP BY 1

-- else NULL not 0 bc sql counts rows with 0 value, but not NULL
-- *1.00 to convert to float and get fraction
