"""
Find the email activity percentile for each user.
Email activity percentile is defined by the total number of emails sent. The
user with the highest number of emails sent will have a percentile of 1, and
so on.
Output the user, total emails, and their activity percentile, and order records
by the total emails in descending order.

table: google_gmail_emails: id |from_user| to_user | day

expected result: from_user | total_email |ntile
"""
-- group by from_user
-- count(*)
-- row_number window
-- window function example **

SELECT
    from_user,
    COUNT(*) AS total_emails,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS ntile
FROM google_gmail_emails
GROUP BY 1

-- solution 2
SELECT
    *,
    NTILE(100) OVER (ORDER BY tmp.total_emails DESC)
FROM (
    SELECT
        from_user,
        COUNT(*) as total_emails
    FROM google_gmail_emails
    GROUP BY from_user
) tmp
