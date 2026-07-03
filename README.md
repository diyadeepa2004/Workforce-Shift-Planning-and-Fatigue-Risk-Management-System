# Workforce Shift Planning and Fatigue Risk Management System

## Overview

The Workforce Shift Planning and Fatigue Risk Management System is a web-based application that helps managers create employee shift schedules while minimizing fatigue-related risks. The system analyses work schedules using predefined fatigue rules and AI-assisted explanations to identify potentially unsafe schedules and recommend safer alternatives.

---

## Problem Statement

Manual shift scheduling often overlooks cumulative fatigue effects. Although individual shifts may appear reasonable, employees may receive insufficient rest, excessive working hours, or multiple consecutive night shifts. These situations increase the risk of fatigue, reduced productivity, and workplace accidents.

This project provides an intelligent scheduling system that evaluates employee schedules, identifies fatigue risks, and recommends improvements before schedules are finalized.

---

## Objectives

- Develop a workforce scheduling platform.
- Detect fatigue risks automatically.
- Provide AI-generated explanations for risky schedules.
- Suggest safer shift arrangements.
- Improve employee well-being while maintaining operational efficiency.

---

## Real-World Impact

The system can be used by organizations operating in healthcare, manufacturing, transportation, aviation, customer support, and other industries where employees work in shifts.

Benefits include:

- Improved employee safety
- Reduced fatigue-related incidents
- Better shift planning
- Increased productivity
- Easier compliance with workplace policies

---

## Users / Stakeholders

### Shift Managers
- Assign employee shifts
- View fatigue warnings
- Modify schedules based on recommendations

### Employees
- View assigned shifts
- Receive fatigue notifications
- Monitor upcoming workload

### HR / Occupational Health
- Review fatigue reports
- Monitor workforce health
- Support policy decisions

---

## Dataset Description

The project uses custom-generated datasets.

| File | Description |
|------|-------------|
| employees.csv | Employee details |
| shifts.csv | Allowed shift types |
| availability.csv | Employee availability |
| fatigue_rules.csv | Fatigue policy rules |
| schedule.csv | Employee shift schedule |

The dataset contains approximately **50 employees** with intentionally created safe and risky scheduling scenarios for testing.

---

## Dataset Source

This project does not require a public dataset.

All datasets are generated according to the starter schema provided in the project guidelines.

---

## Technology Stack

### Frontend
- React / HTML
- CSS
- JavaScript

### Backend
- Flask

### Database
- SQLite

### AI Component
- OpenAI API / Rule-based Fatigue Engine

### Version Control
- Git
- GitHub

---

## System Workflow

1. Manager logs into the system.
2. Employee availability is loaded.
3. Shift assignments are created.
4. Fatigue engine analyses schedules.
5. AI explains detected risks.
6. Dashboard displays warnings and suggestions.
7. Manager updates the schedule if required.

---

## AI / ML Component

The AI module analyses generated schedules using fatigue management rules such as:

- Minimum rest period
- Maximum weekly working hours
- Consecutive night shifts
- Long shift duration

When a rule is violated, the AI generates an easy-to-understand explanation and suggests safer scheduling alternatives.

---

## Features

- Employee management
- Shift scheduling
- Availability tracking
- Fatigue risk detection
- AI-generated explanations
- Schedule improvement suggestions
- Dashboard visualization

---

## Project Structure

```text
workforce_shift_planning_and_fatigue_risk_management_system/
│
├── data/
│   ├── employees.csv
│   ├── shifts.csv
│   ├── availability.csv
│   ├── fatigue_rules.csv
│   └── schedule.csv
│
├── notebooks/
│   └── exploration_or_modeling.ipynb
│
├── src/
│   ├── main.py
│   ├── preprocessing.py
│   ├── fatigue_engine.py
│   ├── ai_explainer.py
│   └── utils.py
│
├── app/
│   ├── app.py
│   ├── templates/
│   └── static/
│
├── docs/
│   ├── project_report.pdf
│   ├── presentation.pdf
│   └── screenshots/
│
├── requirements.txt
└── README.md
```

---

## Installation

```bash
git clone <repository-url>

cd workforce_shift_planning_and_fatigue_risk_management_system

pip install -r requirements.txt

python app.py
```

---

## Sample Output

(Add screenshots here after development)

Example:

- Dashboard
- Schedule Table
- Fatigue Warning
- AI Suggestion

---

## Results and Insights

(Add after implementation)

Example:

- Successfully detects fatigue risks.
- Flags consecutive night shifts.
- Suggests safer shift schedules.
- Generates understandable AI explanations.

---

## Limitations

- Uses synthetic data.
- Rule-based fatigue analysis.
- Small dataset.
- Does not optimize schedules automatically.
- AI recommendations depend on configured rules.

---

## Responsible Use

This system is intended as a decision-support tool.

Final scheduling decisions should always be reviewed by managers or HR professionals.

---

## Future Improvements

- Automatic schedule optimization
- Machine learning fatigue prediction
- Employee preference learning
- Calendar integration
- Mobile application
- Real-time notifications

---

## Team Members

| Team Member Name | Responsibility |
|------------------|----------------|
| Anna Andrew | Backend Development |
| Anushka Yadav | Backend Development |
| Diya Alka Abhilash | Frontend Development |
| Santhipriya R | Documentation<br>Demo Video |
| Vedanti Sharma | Dataset Preparation<br>Backend Development |

---

## Acknowledgements

Developed as part of the **Himshikhar SDAI Capstone Project (July 2026).**
