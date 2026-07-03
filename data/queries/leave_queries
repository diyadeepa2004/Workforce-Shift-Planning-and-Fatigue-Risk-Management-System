/*********************************************************************
LEAVE QUERIES
*********************************************************************/

SELECT * FROM leave_requests;

SELECT * FROM leave_requests
WHERE leave_status='Pending';

SELECT * FROM leave_requests
WHERE leave_status='Approved';

SELECT * FROM leave_requests
WHERE leave_status='Rejected';

SELECT employee_id,
COUNT(*) total_leave
FROM leave_requests
GROUP BY employee_id;

SELECT leave_date,
COUNT(*)
FROM leave_requests
GROUP BY leave_date;

SELECT reason,
COUNT(*)
FROM leave_requests
GROUP BY reason;

SELECT *
FROM leave_requests
ORDER BY leave_date;

SELECT *
FROM leave_requests
WHERE leave_date>=CURRENT_DATE;

SELECT
COUNT(*) total_requests,
SUM(CASE WHEN leave_status='Approved' THEN 1 ELSE 0 END) approved,
SUM(CASE WHEN leave_status='Pending' THEN 1 ELSE 0 END) pending
FROM leave_requests;
