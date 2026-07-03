BEGIN;

-- Employees
INSERT INTO employees (employee_id, employee_name) VALUES
('E001','Aisha Khan'),('E002','Daniel Park'),('E003','Sofia Martinez'),
('E004','Michael Brown'),('E005','Chen Li'),('E006','Rachel O''Neill'),
('E007','Arjun Mehta'),('E008','Olivia Rossi'),('E009','Lucas Silva'),
('E010','Maya Patel'),('E011','Noah Williams'),('E012','Emma Johansson'),
('E013','Samuel Kim'),('E014','Fatima Al-Masri'),('E015','Ethan Green'),
('E016','Isabella Garcia'),('E017','Mateo Fernandez'),('E018','Chloe Nguyen'),
('E019','Oliver Thompson'),('E020','Sarah Ibrahim'),('E021','Jacob Müller'),
('E022','Nora Silva'),('E023','Daniela Costa'),('E024','William Harris'),
('E025','Lina Berg'),('E026','Alexey Ivanov'),('E027','Hannah Lee'),
('E028','Aditya Rao'),('E029','Maria Fernandez'),('E030','Peter Novak'),
('E031','Zoe Adams'),('E032','Noelle Dupont'),('E033','Liam O''Connor'),
('E034','Yuki Tanaka'),('E035','Hassan Jafari'),('E036','Elena Petrova'),
('E037','Omar Aziz'),('E038','Sara Brown'),('E039','Victor Gomez'),
('E040','Aleksandra Nowak'),('E041','Tyler Brooks'),('E042','Priya Sen'),
('E043','Jacob Rossi'),('E044','Lola Mensah'),('E045','Marcus Schmidt'),
('E046','Ella Dimitrova'),('E047','Diego Alvarez'),('E048','Keiko Sato'),
('E049','Brandon King'),('E050','Amira Hassan');

-- Shift Types
INSERT INTO shift_types
(shift_id,shift_name,start_time,end_time,duration_hours,description) VALUES
('S001','Day','08:00','16:00',8,'Day Shift'),
('S002','Evening','16:00','00:00',8,'Evening Shift'),
('S003','Night','00:00','08:00',8,'Night Shift'),
('S004','Weekend','09:00','17:00',8,'Weekend Shift');

-- Availability
INSERT INTO availability(employee_id,available_days) VALUES
('E001','Mon-Fri'),('E002','Mon-Fri'),('E003','Tue-Sun'),('E004','Mon,Wed,Fri,Sat,Sun'),
('E005','Mon-Fri'),('E006','Mon-Fri'),('E007','Mon-Fri'),('E008','Mon-Fri'),
('E009','Thu-Sun'),('E010','Mon-Sun'),('E011','Mon-Fri'),('E012','Mon,Sat,Sun'),
('E013','Mon-Fri'),('E014','Mon-Sat'),('E015','Mon-Fri'),('E016','Mon-Fri'),
('E017','Tue-Sat'),('E018','Mon-Fri'),('E019','Mon-Fri'),('E020','Mon-Fri'),
('E021','Mon-Fri'),('E022','Mon-Sun'),('E023','Mon-Fri'),('E024','Mon-Fri'),
('E025','Wed-Sun'),('E026','Mon-Fri'),('E027','Mon-Fri'),('E028','Fri-Sun'),
('E029','Mon-Fri'),('E030','Mon-Fri'),('E031','Tue-Sat'),('E032','Mon-Fri'),
('E033','Mon-Fri'),('E034','Mon-Thu'),('E035','Mon-Fri'),('E036','Mon-Fri'),
('E037','Mon-Sun'),('E038','Sat,Sun,Mon'),('E039','Mon-Fri'),('E040','Mon-Fri'),
('E041','Mon-Fri'),('E042','Mon-Fri'),('E043','Mon-Fri'),('E044','Fri-Sun'),
('E045','Mon-Fri'),('E046','Tue-Sat'),('E047','Mon-Fri'),('E048','Mon-Fri'),
('E049','Mon-Fri'),('E050','Mon-Sun');

-- Fatigue Rules
INSERT INTO fatigue_rules(employee_id,max_shift_hours,min_rest_hours,max_consecutive_nights,max_weekly_hours,notes) VALUES
('E001',8,12,2,40,NULL),('E002',8,12,0,40,'No night work'),
('E003',10,12,3,48,NULL),('E004',8,11,0,40,'No consecutive nights'),
('E005',8,12,1,45,NULL),('E006',12,14,4,48,NULL),
('E007',10,12,1,50,NULL),('E008',8,12,0,40,'No night work'),
('E009',10,12,2,48,NULL),('E010',12,12,3,60,NULL),
('E011',8,11,0,40,'No early mornings'),('E012',8,12,0,40,'Weekend only'),
('E013',10,12,0,50,'No nights'),('E014',12,14,3,48,'24h off after 4 nights'),
('E015',8,12,0,45,'Manager approval'),('E016',8,12,0,40,'Light duty'),
('E017',10,12,3,48,NULL),('E018',8,12,0,40,'No weekends'),
('E019',10,12,2,50,'Prefer day'),('E020',8,12,1,40,'Sunday off'),
('E021',8,12,0,40,'Trainer'),('E022',10,12,1,50,'Saturday'),
('E023',8,11,0,40,'Short routes'),('E024',10,12,0,50,'Emergency cover'),
('E025',12,14,2,48,'Max 2 nights'),('E026',8,12,0,40,'No early'),
('E027',8,12,0,40,'Weekend training'),('E028',10,12,2,48,'Long rest'),
('E029',8,12,0,40,'Max 2 evenings'),('E030',8,12,0,40,'Morning'),
('E031',10,12,3,48,'Monitor'),('E032',8,12,0,40,'Training'),
('E033',10,12,0,50,'Max10h'),('E034',12,14,4,48,'Rotate'),
('E035',8,12,0,40,'Weekdays'),('E036',8,12,0,40,'No nights'),
('E037',10,12,0,50,'12h rest'),('E038',8,12,0,40,'Sunday'),
('E039',10,12,3,48,NULL),('E040',8,12,0,40,'Reduce evenings'),
('E041',8,11,0,40,'No layovers'),('E042',8,12,0,40,'Flexible'),
('E043',8,12,0,40,'Trainer'),('E044',12,14,3,48,'Weekend nights'),
('E045',8,12,0,45,'On-call'),('E046',10,12,2,48,'2 nights'),
('E047',10,12,0,50,'12h max'),('E048',8,12,0,40,'Consistent'),
('E049',8,12,0,40,'Avoid nights'),('E050',12,12,3,60,'Monitor hours');

-- Schedule (40 rows)
INSERT INTO schedule(assignment_id,employee_id,shift_id,work_date,hours_worked,assignment_status) VALUES
('A001','E001','S001','2026-07-06',8,'Assigned'),
('A002','E002','S001','2026-07-06',8,'Assigned'),
('A003','E003','S002','2026-07-06',8,'Assigned'),
('A004','E004','S004','2026-07-06',8,'Assigned'),
('A005','E005','S001','2026-07-06',8,'Assigned'),
('A006','E006','S003','2026-07-06',8,'Assigned'),
('A007','E007','S001','2026-07-07',8,'Assigned'),
('A008','E008','S001','2026-07-07',8,'Assigned'),
('A009','E009','S003','2026-07-07',8,'Assigned'),
('A010','E010','S002','2026-07-07',8,'Assigned'),
('A011','E011','S002','2026-07-08',8,'Assigned'),
('A012','E012','S004','2026-07-08',8,'Assigned'),
('A013','E013','S001','2026-07-08',8,'Assigned'),
('A014','E014','S003','2026-07-08',12,'Assigned'),
('A015','E015','S001','2026-07-08',8,'Assigned'),
('A016','E016','S002','2026-07-09',8,'Assigned'),
('A017','E017','S003','2026-07-09',10,'Assigned'),
('A018','E018','S001','2026-07-09',8,'Assigned'),
('A019','E019','S002','2026-07-09',8,'Assigned'),
('A020','E020','S001','2026-07-09',8,'Assigned'),
('A021','E021','S001','2026-07-10',8,'Assigned'),
('A022','E022','S004','2026-07-10',8,'Assigned'),
('A023','E023','S001','2026-07-10',8,'Assigned'),
('A024','E024','S002','2026-07-10',8,'Assigned'),
('A025','E025','S003','2026-07-10',12,'Assigned'),
('A026','E026','S002','2026-07-11',8,'Assigned'),
('A027','E027','S001','2026-07-11',8,'Assigned'),
('A028','E028','S003','2026-07-11',10,'Assigned'),
('A029','E029','S002','2026-07-11',8,'Assigned'),
('A030','E030','S001','2026-07-11',8,'Assigned'),
('A031','E031','S003','2026-07-12',10,'Assigned'),
('A032','E032','S001','2026-07-12',8,'Assigned'),
('A033','E033','S002','2026-07-12',8,'Assigned'),
('A034','E034','S003','2026-07-12',12,'Assigned'),
('A035','E035','S001','2026-07-12',8,'Assigned'),
('A036','E036','S002','2026-07-13',8,'Assigned'),
('A037','E037','S003','2026-07-13',10,'Assigned'),
('A038','E038','S004','2026-07-13',8,'Assigned'),
('A039','E039','S003','2026-07-13',10,'Assigned'),
('A040','E040','S002','2026-07-13',8,'Assigned');

-- Leave Requests
INSERT INTO leave_requests(leave_id,employee_id,leave_date,reason,leave_status) VALUES
('L001','E010','2026-07-08','Sick','Approved'),
('L002','E018','2026-07-10','Medical','Pending'),
('L003','E021','2026-07-11','Vacation','Approved'),
('L004','E028','2026-07-12','Personal','Rejected'),
('L005','E035','2026-07-14','Family','Approved'),
('L006','E044','2026-07-15','Emergency','Pending'),
('L007','E047','2026-07-16','Conference','Approved'),
('L008','E003','2026-07-17','Medical','Approved'),
('L009','E014','2026-07-18','Vacation','Pending'),
('L010','E050','2026-07-19','Personal','Approved');

-- Recommendations
INSERT INTO recommendations(recommendation_id,assignment_id,risk_level,recommendation,accepted) VALUES
('R001','A014','High','Swap to day shift','Yes'),
('R002','A017','Medium','Increase rest period','Pending'),
('R003','A025','High','Reduce weekly hours','No'),
('R004','A028','Medium','Assign weekend off','Pending'),
('R005','A031','High','Avoid consecutive nights','Yes'),
('R006','A034','Critical','Mandatory rest day','Yes'),
('R007','A037','Medium','Monitor fatigue','Pending'),
('R008','A039','High','Swap with available employee','No'),
('R009','A006','Low','No action required','Yes'),
('R010','A003','Low','No action required','Yes'),
('R011','A010','Medium','Reduce overtime','Pending'),
('R012','A022','Low','Balanced schedule','Yes'),
('R013','A024','Low','No action required','Yes'),
('R014','A040','Medium','Limit evening shifts','Pending'),
('R015','A001','Low','No action required','Yes');

COMMIT;
