-- Transcribed from the original report; see docs/project-notes.md.
-- Original analysis logic retained, including the documented Q4 limitation.

-- Q1: What are the top 10 trending movies right now (more likes received)?
SELECT c.content_id, c.title, COUNT(*) AS likes_last_30_days
FROM viewing v
JOIN content c ON v.content_id = c.content_id
WHERE v.liked_flag = 1
 AND c.content_type = 'Movie'
 AND v.view_date >= DATE_SUB((SELECT MAX(view_date) FROM viewing),
      INTERVAL 30 DAY)
GROUP BY c.content_id, c.title
ORDER BY likes_last_30_days DESC, c.title
LIMIT 10;

-- Q2: Percentage of people that watch a show or movie in their language.
-- Metric counts eligible viewing events, not distinct people.
SELECT SUM(CASE
           WHEN v.audio_language_id = s.preferred_language_id
           THEN 1 ELSE 0
          END) AS views_pref_lang, COUNT(*) AS total_views,
     100.0 * SUM(CASE
                WHEN v.audio_language_id = s.preferred_language_id
                  THEN 1 ELSE 0
                 END) / COUNT(*) AS pct_pref_lang
FROM viewing v JOIN subscriber s ON v.subscriber_id = s.subscriber_id
WHERE v.audio_language_id IS NOT NULL AND s.preferred_language_id IS NOT NULL;

-- Q3: Which are the top 5 subscription locations right now?
SELECT c.country_name, COUNT(*) AS active_subscriptions
FROM subscription s JOIN subscription_status ss ON s.sstatus_id = ss.sstatus_id
JOIN subscriber sub ON s.subscriber_id = sub.subscriber_id
JOIN country c ON sub.country_id = c.country_id
WHERE ss.description = 'ACTIVE'
GROUP BY c.country_name
ORDER BY active_subscriptions DESC, c.country_name
LIMIT 5;

-- Q4: Show a linear graph with the revenue per genre for the last year.
-- Historical query: repeated joins duplicate payment amounts.
-- This output is not an allocation of actual revenue by genre.
SELECT
  DATE_FORMAT(p.payment_date, '%Y-%m') AS payment_month,
  g.genre_name,
  SUM(p.amount) AS monthly_revenue
FROM payment p
JOIN payment_status ps
  ON p.pstatus_id = ps.pstatus_id
JOIN subscription s
  ON p.subscription_id = s.subscription_id
JOIN subscription_plan sp
  ON s.plan_id = sp.plan_id
JOIN subscriber sub
  ON s.subscriber_id = sub.subscriber_id
JOIN viewing v
  ON v.subscriber_id = sub.subscriber_id
JOIN content_genre cg
  ON v.content_id = cg.content_id
JOIN genre g
  ON cg.genre_id = g.genre_id
WHERE ps.description = 'COMPLETED'
 AND p.payment_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY payment_month, g.genre_name
ORDER BY payment_month, monthly_revenue DESC;

-- Q5: Which actors contributed the most total watch time during the last year?
SELECT a.actor_id, a.full_name, SUM(v.minutes_watched) AS total_watch_time_minutes,
ROUND(SUM(v.minutes_watched) / 60, 2) AS total_watch_time_hours
FROM viewing v JOIN content_actor ca ON v.content_id = ca.content_id
JOIN actor a ON ca.actor_id = a.actor_id
WHERE v.view_date >= DATE_SUB((SELECT MAX(view_date) FROM viewing),
      INTERVAL 1 YEAR)
GROUP BY a.actor_id, a.full_name
ORDER BY total_watch_time_minutes DESC
LIMIT 10;
