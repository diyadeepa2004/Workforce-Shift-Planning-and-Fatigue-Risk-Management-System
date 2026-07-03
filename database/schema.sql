------------------------------------------------------------
-- CLEAN DATABASE
------------------------------------------------------------

DROP TABLE IF EXISTS recommendations CASCADE;
DROP TABLE IF EXISTS leave_requests CASCADE;
DROP TABLE IF EXISTS schedule CASCADE;
DROP TABLE IF EXISTS fatigue_rules CASCADE;
DROP TABLE IF EXISTS availability CASCADE;
DROP TABLE IF EXISTS employee_shift_preferences CASCADE;
DROP TABLE IF EXISTS shift_types CASCADE;
DROP TABLE IF EXISTS employees CASCADE;

------------------------------------------------------------
-- EMPLOYEES
------------------------------------------------------------

CREATE TABLE employees(

    employee_id         VARCHAR(10) PRIMARY KEY,

    employee_name       VARCHAR(100) NOT NULL,

    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- SHIFT TYPES
------------------------------------------------------------

CREATE TABLE shift_types(

    shift_id            VARCHAR(10) PRIMARY KEY,

    shift_name          VARCHAR(30) UNIQUE NOT NULL,

    start_time          TIME NOT NULL,

    end_time            TIME NOT NULL,

    duration_hours      INTEGER NOT NULL
        CHECK(duration_hours>0),

    description         TEXT

);

------------------------------------------------------------
-- EMPLOYEE SHIFT PREFERENCES
------------------------------------------------------------

CREATE TABLE employee_shift_preferences(

    preference_id       SERIAL PRIMARY KEY,

    employee_id         VARCHAR(10)
        REFERENCES employees(employee_id)
        ON DELETE CASCADE,

    shift_id            VARCHAR(10)
        REFERENCES shift_types(shift_id)
        ON DELETE CASCADE,

    UNIQUE(employee_id,shift_id)

);

------------------------------------------------------------
-- AVAILABILITY
------------------------------------------------------------

CREATE TABLE availability(

    availability_id     SERIAL PRIMARY KEY,

    employee_id         VARCHAR(10)
        REFERENCES employees(employee_id)
        ON DELETE CASCADE,

    available_days      VARCHAR(100) NOT NULL,

    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- FATIGUE RULES
------------------------------------------------------------

CREATE TABLE fatigue_rules(

    rule_id                     SERIAL PRIMARY KEY,

    employee_id                 VARCHAR(10)
        REFERENCES employees(employee_id)
        ON DELETE CASCADE,

    max_shift_hours             INTEGER NOT NULL
        CHECK(max_shift_hours>0),

    min_rest_hours              INTEGER NOT NULL
        CHECK(min_rest_hours>=8),

    max_consecutive_nights      INTEGER NOT NULL
        CHECK(max_consecutive_nights>=0),

    max_weekly_hours            INTEGER NOT NULL
        CHECK(max_weekly_hours>0),

    notes                       TEXT,

    created_at                  TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- SCHEDULE
------------------------------------------------------------

CREATE TABLE schedule(

    assignment_id           VARCHAR(10) PRIMARY KEY,

    employee_id             VARCHAR(10)
        REFERENCES employees(employee_id)
        ON DELETE RESTRICT,

    shift_id                VARCHAR(10)
        REFERENCES shift_types(shift_id)
        ON DELETE RESTRICT,

    work_date               DATE NOT NULL,

    hours_worked            INTEGER NOT NULL
        CHECK(hours_worked BETWEEN 1 AND 16),

    assignment_status       VARCHAR(20)
        DEFAULT 'Assigned'

        CHECK(

            assignment_status IN(

                'Assigned',

                'Completed',

                'Cancelled',

                'Swapped'

            )

        ),

    created_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- LEAVE REQUESTS
------------------------------------------------------------

CREATE TABLE leave_requests(

    leave_id                VARCHAR(10) PRIMARY KEY,

    employee_id             VARCHAR(10)
        REFERENCES employees(employee_id)
        ON DELETE CASCADE,

    leave_date              DATE NOT NULL,

    reason                  TEXT,

    leave_status            VARCHAR(20)

        DEFAULT 'Pending'

        CHECK(

            leave_status IN(

                'Pending',

                'Approved',

                'Rejected'

            )

        ),

    created_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- AI RECOMMENDATIONS
------------------------------------------------------------

CREATE TABLE recommendations(

    recommendation_id       VARCHAR(10) PRIMARY KEY,

    assignment_id           VARCHAR(10)
        REFERENCES schedule(assignment_id)
        ON DELETE CASCADE,

    risk_level              VARCHAR(20)

        CHECK(

            risk_level IN(

                'Low',

                'Medium',

                'High',

                'Critical'

            )

        ),

    recommendation          TEXT NOT NULL,

    accepted                VARCHAR(20)

        DEFAULT 'Pending'

        CHECK(

            accepted IN(

                'Yes',

                'No',

                'Pending'

            )

        ),

    created_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

------------------------------------------------------------
-- INDEXES
------------------------------------------------------------

CREATE INDEX idx_employee_name

ON employees(employee_name);

CREATE INDEX idx_schedule_employee

ON schedule(employee_id);

CREATE INDEX idx_schedule_shift

ON schedule(shift_id);

CREATE INDEX idx_schedule_date

ON schedule(work_date);

CREATE INDEX idx_leave_employee

ON leave_requests(employee_id);

CREATE INDEX idx_fatigue_employee

ON fatigue_rules(employee_id);

CREATE INDEX idx_recommendation_assignment

ON recommendations(assignment_id);

------------------------------------------------------------
-- VIEWS
------------------------------------------------------------

CREATE VIEW employee_schedule AS

SELECT

e.employee_id,

e.employee_name,

s.assignment_id,

s.work_date,

st.shift_name,

s.hours_worked,

s.assignment_status

FROM employees e

JOIN schedule s

ON e.employee_id=s.employee_id

JOIN shift_types st

ON st.shift_id=s.shift_id;

------------------------------------------------------------

CREATE VIEW employee_fatigue_summary AS

SELECT

e.employee_id,

e.employee_name,

f.max_shift_hours,

f.max_weekly_hours,

f.max_consecutive_nights,

f.min_rest_hours

FROM employees e

JOIN fatigue_rules f

ON e.employee_id=f.employee_id;

------------------------------------------------------------

CREATE VIEW pending_leave_requests AS

SELECT

*

FROM leave_requests

WHERE leave_status='Pending';

------------------------------------------------------------

CREATE VIEW high_risk_recommendations AS

SELECT

*

FROM recommendations

WHERE risk_level IN(

'High',

'Critical'

);

------------------------------------------------------------
-- END OF SCHEMA
------------------------------------------------------------
