##
```sql
SELECT tweet_id ,SUM(liked) likes , SUM(!liked) dislike FROM likes GROUP BY tweet_id
```
                 


```sql
SELECT * FROM tweets LEFT JOIN(
    SELECT tweet_id ,SUM(liked) likes , SUM(!liked) dislike FROM likes GROUP BY tweet_id
) likes ON likes.tweet_id = tweets.id

```