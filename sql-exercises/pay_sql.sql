"""
Find the total number of downloads for paying and non-paying users by date.
Include only records where non-paying customers have more downloads than paying
customers. The output should be sorted y earliest date first and contain 3
columns date, non-paying downloads and paying downloads.

tables:
ms_user_dimension: user_id | acc_id

ms_acc_dimension: acc_id | paying_customer

ms_download_facts: date | user_id | downloads
"""

-- paying_customer: yes or no
-- expected result: date | non-paying | paying

-- join 3 tables
-- sum count(non-paying), count(paying)
-- group by date, order by date
-- where count(np.downloads) > count(p.downloads)

WITH temp AS (SELECT date,
    SUM(CASE WHEN paying_customer = 'no' THEN downloads END) AS
        non_paying
    SUM(CASE WHEN paying_customer = 'yes' THEN downloads END) AS
        paying
FROM ms_user_dimension u
JOIN ms_acc_dimension a
    ON u.acc_id = a.acc_id
JOIN ms_download_facts f
    ON u.user_id = f.user_id
GROUP BY 1
ORDER BY 1
)

SELECT *
FROM temp
WHERE non_paying > paying
