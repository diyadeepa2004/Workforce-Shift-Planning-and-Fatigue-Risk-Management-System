/*********************************************************************
AI RECOMMENDATION QUERIES
*********************************************************************/

SELECT *
FROM recommendations;

SELECT *
FROM recommendations
WHERE risk_level='Low';

SELECT *
FROM recommendations
WHERE risk_level='Medium';

SELECT *
FROM recommendations
WHERE risk_level='High';

SELECT *
FROM recommendations
WHERE risk_level='Critical';

SELECT *
FROM recommendations
WHERE accepted='Yes';

SELECT *
FROM recommendations
WHERE accepted='No';

SELECT *
FROM recommendations
WHERE accepted='Pending';

SELECT
risk_level,
COUNT(*)
FROM recommendations
GROUP BY risk_level;

SELECT
accepted,
COUNT(*)
FROM recommendations
GROUP BY accepted;

SELECT
risk_level,
accepted
FROM recommendations;

SELECT
AVG(CASE
WHEN accepted='Yes' THEN 1
ELSE 0
END)*100
AS acceptance_rate
FROM recommendations;

SELECT
recommendation,
COUNT(*)
FROM recommendations
GROUP BY recommendation
ORDER BY COUNT(*) DESC;

SELECT
assignment_id,
recommendation
FROM recommendations;

SELECT
COUNT(*) total_recommendations
FROM recommendations;
