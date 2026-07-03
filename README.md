# Workforce Shift Planning and Fatigue Risk Management System

## Problem Statement

Manual workforce scheduling often overlooks cumulative fatigue caused by insufficient rest periods, excessive weekly working hours, and consecutive night shifts. Such schedules can negatively impact employee health, productivity, and workplace safety.

This project develops a Workforce Shift Planning and Fatigue Risk Management System that helps managers assign shifts while automatically checking fatigue-related risks. The system identifies unsafe schedules, explains why they are risky, and suggests safer alternatives to support better scheduling decisions.

---

## Dataset / Reference Source

This project uses **custom-generated datasets** based on the starter schema provided in the project guidelines.

### Dataset Files

| File | Description |
|------|-------------|
| employees.csv | Employee information |
| shifts.csv | Shift types assigned to employees |
| availability.csv | Employee availability |
| fatigue_rules.csv | Fatigue policy rules |
| schedule.csv | Employee shift assignments |

Approximately **50 employee records** are included with both normal and intentionally risky scheduling scenarios for testing fatigue detection.

---

## Tools Used

### Frontend
- React
- HTML
- CSS
- JavaScript

### Backend
- Flask
- Node

### Database
- MySQL

### AI
- Rule-based Fatigue Detection
- OpenAI API (for fatigue explanation and schedule suggestions)

### Version Control
- Git
- GitHub

---

## Project Workflow

1. Manager creates or updates employee schedules.
2. Backend stores schedule information in the database.
3. Fatigue engine evaluates the schedule using predefined fatigue rules.
4. AI generates explanations for detected fatigue risks.
5. Dashboard displays warnings and safer scheduling recommendations.
6. Manager reviews recommendations before finalizing the schedule.

---

## AI / ML / Software Component

The AI module evaluates employee schedules against configurable fatigue rules, including:

- Minimum rest period
- Maximum weekly working hours
- Consecutive night shifts
- Shift duration limits

When a fatigue rule is violated, the system generates an explanation in simple English and suggests safer scheduling alternatives to help managers make informed decisions.

---

## How to Run the Project

```bash
git clone <repository-url>

cd workforce_shift_planning_and_fatigue_risk_management_system

pip install -r requirements.txt

python app.py
```

---

## Demo Screenshots

*(To be added after implementation.)*

- Dashboard
- Shift Assignment Page
- Fatigue Risk Detection
- AI Recommendation Output

---

## Results and Insights

*(To be updated after implementation.)*

Expected outcomes include:

- Successful fatigue risk detection
- Identification of unsafe shift patterns
- AI-generated schedule explanations
- Improved shift planning decisions

---

## Limitations

- Uses synthetic data for demonstration.
- Fatigue analysis is primarily rule-based.
- Recommendations depend on configured fatigue policies.
- Does not automatically optimize schedules.

---

## Future Improvements

- Automatic shift optimization
- Machine learning-based fatigue prediction
- Employee preference learning
- Calendar integration
- Mobile application
- Email/SMS notifications

---

## Team Members

| Name | Responsibility |
|------|----------------|
| Anna Andrew | Backend |
| Anushka Yadav | Backend |
| Diya Alka Abhilash | Frontend |
| Santhipriya R | Documentation<br>Demo Video |
| Vedanti Sharma | Dataset Preparation<br>Backend Development |

---

## Acknowledgements

Developed as part of the **Himshikhar SDAI Capstone Project (July 2026).**
