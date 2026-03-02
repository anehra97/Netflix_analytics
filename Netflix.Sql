   NETFLIX STREAMING ANALYSIS
   ========================================================= */


/* ---------------------------------------------------------
1. Premium Users Watch Time by Country
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE subscription_type = 'Premium'
  AND (user_name LIKE 'R%' OR user_name LIKE 'S%')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-15'
GROUP BY country
HAVING total_hours > 10
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
2. Average Rating by Genre
--------------------------------------------------------- */
SELECT
    AVG(rating) AS avg_rating,
    genre
FROM netflix_streaming_data
WHERE content_type IN ('Movie','Series')
  AND country IN ('India','USA','UK')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY genre
HAVING avg_rating > 8
ORDER BY avg_rating DESC;


/* ---------------------------------------------------------
3. Watch Time by Country & Device
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country,
    device_type
FROM netflix_streaming_data
WHERE content_title LIKE 'a%'
  AND watch_date BETWEEN '2024-01-10' AND '2024-02-20'
GROUP BY country, device_type
HAVING total_hours > 8
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
4. Crime Content Performance
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE content_type = 'Crime'
  AND rating BETWEEN 8 AND 9.5
GROUP BY country
HAVING total_hours > 10
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
5. Average Watch Hours by Subscription Type
--------------------------------------------------------- */
SELECT
    AVG(watch_hours) AS avg_hours,
    subscription_type
FROM netflix_streaming_data
WHERE country IN ('India','USA')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY subscription_type
HAVING avg_hours > 3
ORDER BY avg_hours DESC;


/* ---------------------------------------------------------
6. Watch Hours by Language & Country
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    language,
    country
FROM netflix_streaming_data
WHERE content_title LIKE '%e%'
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY language, country
HAVING total_hours > 7
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
7. High Rated Series Consumption
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE content_type = 'Series'
  AND rating BETWEEN 8.5 AND 9.5
  AND subscription_type IN ('Premium','Standard')
GROUP BY country
HAVING total_hours > 5
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
8. Users Containing Letter 'a'
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE user_name LIKE '%a%'
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-20'
GROUP BY country
HAVING total_hours > 6
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
9. Average Rating by Country & Content Type
--------------------------------------------------------- */
SELECT
    AVG(rating) AS avg_rating,
    country,
    content_type
FROM netflix_streaming_data
WHERE country IN ('India','USA','Canada')
  AND content_title LIKE '%r%'
GROUP BY country, content_type
HAVING avg_rating > 8
ORDER BY avg_rating DESC;


/* ---------------------------------------------------------
10. Watch Hours by Subscription & Genre
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    subscription_type,
    genre
FROM netflix_streaming_data
WHERE country IN ('India','UK')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY subscription_type, genre
HAVING total_hours > 5
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
11. Fantasy Genre Premium Performance
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE rating BETWEEN 8 AND 9
  AND subscription_type = 'Premium'
  AND genre = 'Fantasy'
GROUP BY country
HAVING total_hours > 5
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
12. Hindi Content Ratings by Subscription
--------------------------------------------------------- */
SELECT
    AVG(rating) AS avg_rating,
    subscription_type
FROM netflix_streaming_data
WHERE language = 'Hindi'
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY subscription_type
HAVING avg_rating > 8
ORDER BY avg_rating DESC;


/* ---------------------------------------------------------
13. Mobile Device Viewing Analysis
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country,
    genre
FROM netflix_streaming_data
WHERE device_type = 'Mobile'
  AND content_title LIKE '%r%'
  AND watch_date BETWEEN '2024-01-05' AND '2024-02-20'
GROUP BY country, genre
HAVING total_hours > 6
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
14. High Rating Viewing Behavior
--------------------------------------------------------- */
SELECT
    AVG(watch_hours) AS avg_hours,
    country
FROM netflix_streaming_data
WHERE country IN ('India','USA','UK')
  AND rating BETWEEN 8.0 AND 9.5
  AND content_title LIKE '%a%'
GROUP BY country
HAVING avg_hours > 4
ORDER BY avg_hours DESC;


/* ---------------------------------------------------------
15. R/N User Watch Time
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country
FROM netflix_streaming_data
WHERE content_type IN ('Movie','Series')
  AND (user_name LIKE 'R%' OR user_name LIKE 'N%')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY country
HAVING total_hours > 4
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
16. Premium vs Standard Performance Comparison
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    country,
    AVG(rating) AS avg_rating
FROM netflix_streaming_data
WHERE subscription_type IN ('Premium','Standard')
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY country
HAVING total_hours > 8
   AND avg_rating > 8
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
17. Series Performance by Language & Genre
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    language,
    genre,
    AVG(rating) AS avg_rating
FROM netflix_streaming_data
WHERE content_type = 'Series'
  AND watch_date BETWEEN '2024-01-01' AND '2024-02-28'
GROUP BY language, genre
HAVING total_hours > 5
   AND avg_rating > 8.2
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
18. Weekend Premium Viewing Analysis
--------------------------------------------------------- */
SELECT
    SUM(watch_hours) AS total_hours,
    content_type,
    country,
    AVG(rating) AS avg_rating
FROM netflix_streaming_data
WHERE subscription_type = 'Premium'
  AND DAYOFWEEK(watch_date) IN (1,7)
GROUP BY content_type, country
HAVING total_hours > 5
   AND avg_rating > 8.5
ORDER BY total_hours DESC;


/* ---------------------------------------------------------
19. Low Device Usage Detection
--------------------------------------------------------- */
SELECT
    AVG(watch_hours) AS avg_hours,
    device_type,
    AVG(rating) AS avg_rating
FROM netflix_streaming_data
WHERE country IN ('UK','USA','Canada')
  AND subscription_type = 'Basic'
GROUP BY device_type
HAVING avg_hours < 4
   AND AVG(rating) BETWEEN 7.0 AND 8.5
ORDER BY avg_hours DESC;