/********************************************************************
EMPLOYEE QUERIES
********************************************************************/

----------------------------------------------------
-- View All Employees
----------------------------------------------------

SELECT *
FROM employees;

----------------------------------------------------
-- Total Employees
----------------------------------------------------

SELECT COUNT(*) AS total_employees
FROM employees;

----------------------------------------------------
-- Employee Alphabetically
----------------------------------------------------

SELECT *
FROM employees
ORDER BY employee_name;

----------------------------------------------------
-- Search Employee By ID
----------------------------------------------------

SELECT *
FROM employees
WHERE employee_id='E001';

----------------------------------------------------
-- Search Employee By Name
----------------------------------------------------

SELECT *
FROM employees
WHERE employee_name
ILIKE '%Aisha%';

----------------------------------------------------
-- Employee Availability
----------------------------------------------------

SELECT

e.employee_id,
e.employee_name,
a.available_days

FROM employees e

JOIN availability a

ON e.employee_id=a.employee_id;

----------------------------------------------------
-- Employee Fatigue Rules
----------------------------------------------------

SELECT

e.employee_name,
f.max_shift_hours,
f.max_weekly_hours,
f.min_rest_hours

FROM employees e

JOIN fatigue_rules f

ON e.employee_id=f.employee_id;

----------------------------------------------------
-- Employees Allowed Night Shift
----------------------------------------------------

SELECT

employee_id

FROM fatigue_rules

WHERE max_consecutive_nights>0;

----------------------------------------------------
-- Employees NOT Allowed Night Shift
----------------------------------------------------

SELECT

employee_id

FROM fatigue_rules

WHERE notes
ILIKE '%No night%';

----------------------------------------------------
-- Employees Available On Weekends
----------------------------------------------------

SELECT *

FROM availability

WHERE available_days
ILIKE '%Sat%'
OR
available_days
ILIKE '%Sun%';

----------------------------------------------------
-- Employees Working Weekdays Only
----------------------------------------------------

SELECT *

FROM availability

WHERE available_days='Mon-Fri';

----------------------------------------------------
-- Employees With Max Weekly Hours >40
----------------------------------------------------

SELECT

employee_id,
max_weekly_hours

FROM fatigue_rules

WHERE max_weekly_hours>40;

----------------------------------------------------
-- Employees Requiring Long Rest
----------------------------------------------------

SELECT *

FROM fatigue_rules

WHERE min_rest_hours>=14;

----------------------------------------------------
-- Employee Summary
----------------------------------------------------

SELECT

e.employee_id,
e.employee_name,
a.available_days,
f.max_weekly_hours

FROM employees e

JOIN availability a

ON e.employee_id=a.employee_id

JOIN fatigue_rules f

ON e.employee_id=f.employee_id;

----------------------------------------------------
-- Employee Count By Weekly Limit
----------------------------------------------------

SELECT

max_weekly_hours,

COUNT(*)

FROM fatigue_rules

GROUP BY max_weekly_hours;

----------------------------------------------------
-- Employees With Notes
----------------------------------------------------

SELECT

employee_id,

notes

FROM fatigue_rules

WHERE notes IS NOT NULL;

----------------------------------------------------
-- Employees Without Notes
----------------------------------------------------

SELECT *

FROM fatigue_rules

WHERE notes IS NULL;

----------------------------------------------------
-- Employee Created Dates
----------------------------------------------------

SELECT

employee_name,

created_at

FROM employees;

----------------------------------------------------
-- Employee Availability Statistics
----------------------------------------------------

SELECT

COUNT(*) AS availability_records

FROM availability;

----------------------------------------------------
-- Employee Overview Dashboard
----------------------------------------------------

SELECT

(SELECT COUNT(*) FROM employees) AS total_employees,

(SELECT COUNT(*) FROM availability) AS availability_profiles,

(SELECT COUNT(*) FROM fatigue_rules) AS fatigue_profiles;
