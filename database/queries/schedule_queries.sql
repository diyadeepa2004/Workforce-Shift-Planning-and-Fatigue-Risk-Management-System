/*********************************************************************
SCHEDULE QUERIES
*********************************************************************/

------------------------------------------------------------
-- View Complete Schedule
------------------------------------------------------------

SELECT
s.assignment_id,
e.employee_name,
st.shift_name,
s.work_date,
s.hours_worked,
s.assignment_status
FROM schedule s
JOIN employees e
ON s.employee_id=e.employee_id
JOIN shift_types st
ON s.shift_id=st.shift_id
ORDER BY s.work_date;

------------------------------------------------------------
-- Today's Schedule
------------------------------------------------------------

SELECT *
FROM schedule
WHERE work_date=CURRENT_DATE;

------------------------------------------------------------
-- Schedule By Employee
------------------------------------------------------------

SELECT
e.employee_name,
st.shift_name,
s.work_date,
s.hours_worked
FROM schedule s
JOIN employees e
ON e.employee_id=s.employee_id
JOIN shift_types st
ON st.shift_id=s.shift_id
WHERE e.employee_id='E001';

------------------------------------------------------------
-- Schedule By Date
------------------------------------------------------------

SELECT *
FROM schedule
WHERE work_date='2026-07-10';

------------------------------------------------------------
-- Employees Working Night Shift
------------------------------------------------------------

SELECT
e.employee_name,
s.work_date
FROM schedule s
JOIN employees e
ON e.employee_id=s.employee_id
WHERE shift_id='S003';

------------------------------------------------------------
-- Employees Working Weekend Shift
------------------------------------------------------------

SELECT
e.employee_name,
s.work_date
FROM schedule s
JOIN employees e
ON e.employee_id=s.employee_id
WHERE shift_id='S004';

------------------------------------------------------------
-- Hours Worked Per Employee
------------------------------------------------------------

SELECT
employee_id,
SUM(hours_worked) AS total_hours
FROM schedule
GROUP BY employee_id
ORDER BY total_hours DESC;

------------------------------------------------------------
-- Number Of Shifts Per Employee
------------------------------------------------------------

SELECT
employee_id,
COUNT(*) AS total_shifts
FROM schedule
GROUP BY employee_id;

------------------------------------------------------------
-- Employees With More Than 20 Hours
------------------------------------------------------------

SELECT
employee_id,
SUM(hours_worked) total_hours
FROM schedule
GROUP BY employee_id
HAVING SUM(hours_worked)>20;

------------------------------------------------------------
-- Completed Assignments
------------------------------------------------------------

SELECT *
FROM schedule
WHERE assignment_status='Completed';

------------------------------------------------------------
-- Assigned Shifts
------------------------------------------------------------

SELECT *
FROM schedule
WHERE assignment_status='Assigned';

------------------------------------------------------------
-- Cancelled Assignments
------------------------------------------------------------

SELECT *
FROM schedule
WHERE assignment_status='Cancelled';

------------------------------------------------------------
-- Shift Distribution
------------------------------------------------------------

SELECT
st.shift_name,
COUNT(*) total
FROM schedule s
JOIN shift_types st
ON st.shift_id=s.shift_id
GROUP BY st.shift_name;

------------------------------------------------------------
-- Daily Workload
------------------------------------------------------------

SELECT
work_date,
SUM(hours_worked) total_hours
FROM schedule
GROUP BY work_date
ORDER BY work_date;

------------------------------------------------------------
-- Average Shift Hours
------------------------------------------------------------

SELECT
AVG(hours_worked)
FROM schedule;

------------------------------------------------------------
-- Long Shifts
------------------------------------------------------------

SELECT *
FROM schedule
WHERE hours_worked=12;

------------------------------------------------------------
-- Medium Shifts
------------------------------------------------------------

SELECT *
FROM schedule
WHERE hours_worked=10;

------------------------------------------------------------
-- Regular Shifts
------------------------------------------------------------

SELECT *
FROM schedule
WHERE hours_worked=8;

------------------------------------------------------------
-- Upcoming Schedule
------------------------------------------------------------

SELECT *
FROM schedule
ORDER BY work_date
LIMIT 10;

------------------------------------------------------------
-- Schedule Dashboard
------------------------------------------------------------

SELECT
COUNT(*) total_assignments,
SUM(hours_worked) total_hours,
AVG(hours_worked) avg_hours
FROM schedule;
