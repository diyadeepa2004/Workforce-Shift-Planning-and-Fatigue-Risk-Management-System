/*********************************************************************
FATIGUE QUERIES
*********************************************************************/

------------------------------------------------------------
-- All Fatigue Rules
------------------------------------------------------------

SELECT *
FROM fatigue_rules;

------------------------------------------------------------
-- Employees Allowed Night Shift
------------------------------------------------------------

SELECT employee_id
FROM fatigue_rules
WHERE max_consecutive_nights>0;

------------------------------------------------------------
-- Employees Not Allowed Night Shift
------------------------------------------------------------

SELECT employee_id
FROM fatigue_rules
WHERE notes ILIKE '%No night%';

------------------------------------------------------------
-- Employees With 12 Hour Rest
------------------------------------------------------------

SELECT *
FROM fatigue_rules
WHERE min_rest_hours=12;

------------------------------------------------------------
-- Employees Requiring 14 Hour Rest
------------------------------------------------------------

SELECT *
FROM fatigue_rules
WHERE min_rest_hours=14;

------------------------------------------------------------
-- Employees With Weekly Limit Above 40
------------------------------------------------------------

SELECT *
FROM fatigue_rules
WHERE max_weekly_hours>40;

------------------------------------------------------------
-- Employees With Weekly Limit 40
------------------------------------------------------------

SELECT *
FROM fatigue_rules
WHERE max_weekly_hours=40;

------------------------------------------------------------
-- Employees Allowed 12 Hour Shifts
------------------------------------------------------------

SELECT *
FROM fatigue_rules
WHERE max_shift_hours=12;

------------------------------------------------------------
-- Average Weekly Limit
------------------------------------------------------------

SELECT
AVG(max_weekly_hours)
FROM fatigue_rules;

------------------------------------------------------------
-- Highest Weekly Limit
------------------------------------------------------------

SELECT
MAX(max_weekly_hours)
FROM fatigue_rules;

------------------------------------------------------------
-- Lowest Weekly Limit
------------------------------------------------------------

SELECT
MIN(max_weekly_hours)
FROM fatigue_rules;

------------------------------------------------------------
-- Average Rest Hours
------------------------------------------------------------

SELECT
AVG(min_rest_hours)
FROM fatigue_rules;

------------------------------------------------------------
-- Fatigue Summary
------------------------------------------------------------

SELECT
COUNT(*) total_profiles,
AVG(max_shift_hours),
AVG(max_weekly_hours)
FROM fatigue_rules;

------------------------------------------------------------
-- Employees Near Weekly Limit
------------------------------------------------------------

SELECT
e.employee_name,
SUM(s.hours_worked) worked,
f.max_weekly_hours
FROM employees e
JOIN schedule s
ON e.employee_id=s.employee_id
JOIN fatigue_rules f
ON e.employee_id=f.employee_id
GROUP BY
e.employee_name,
f.max_weekly_hours
HAVING SUM(s.hours_worked)>=0.8*f.max_weekly_hours;

------------------------------------------------------------
-- Employees Exceeding Weekly Limit
------------------------------------------------------------

SELECT
e.employee_name,
SUM(s.hours_worked),
f.max_weekly_hours
FROM employees e
JOIN schedule s
ON e.employee_id=s.employee_id
JOIN fatigue_rules f
ON e.employee_id=f.employee_id
GROUP BY
e.employee_name,
f.max_weekly_hours
HAVING SUM(s.hours_worked)>f.max_weekly_hours;
