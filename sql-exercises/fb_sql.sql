"""
Find out the number of conversations (send or receive) by each user by date

table: fb_messages : id |date| user1| user2| msg_count
expected result: date| user1 | msg_count

"""
-- assumption: because doing send and receive, duplicate

-- get msg_count for sent
-- get msg_count for received
-- union above 2

(SELECT
    date,
    user1,
    msg_count
FROM fb_messages)
UNION ALL -- not UNION bc that removes duplicate
(SELECT
    date,
    user2,
    msg_count
FROM fb_messages)
GROUP BY date, user1
ORDER BY date
