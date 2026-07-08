# Workforce Shift Planning and Fatigue Risk Management System

An AI-assisted workforce management platform designed to optimize employee shift allocation, monitor fatigue risk, manage leave requests, and provide intelligent scheduling recommendations. The system aims to improve workforce safety, operational efficiency, and managerial decision-making through data-driven insights.

---

# Problem Statement

Organizations that operate in shift-based environments often face challenges in creating balanced work schedules while ensuring employee wellbeing. Manual scheduling methods can result in excessive working hours, consecutive night shifts, fatigue accumulation, leave conflicts, and inefficient workforce utilization.

The Workforce Shift Planning and Fatigue Risk Management System addresses these challenges by providing a centralized platform that assists managers in employee scheduling, fatigue monitoring, leave management, and AI-assisted workforce recommendations.

---

# Dataset / Reference Source

Since publicly available workforce scheduling datasets containing employee availability, shift preferences, fatigue constraints, leave requests, and AI recommendations were not available in a single comprehensive format, a synthetic dataset was created specifically for this project.

The dataset was designed to simulate a realistic workforce management environment by incorporating common scheduling scenarios, employee preferences, fatigue rules, and leave management cases. It was generated for educational and demonstration purposes and is suitable for testing the functionality of the proposed system.

### Datasets Used

- Employee Information Dataset
- Employee Availability Dataset
- Employee Shift Preferences Dataset
- Employee Fatigue Rules Dataset
- Shift Schedule Dataset
- Leave Requests Dataset
- AI Recommendations Dataset

These datasets were processed and transformed into structured objects for integration with the application.

---

# Tools Used

## Frontend

- React.js
- Vite
- Bootstrap 5
- React Router DOM
- React Icons

## Backend 

- Node.js
- Express.js
- MongoDB

## AI / Data Processing

- Rule-Based AI Recommendation Engine
- Google Gemini API *(Future Integration)*

## Development Tools

- Visual Studio Code
- Git
- GitHub
- npm

---

# Project Workflow

### Step 1 – Employee Data Management

Employee information, availability, preferred shifts, and fatigue rules are loaded into the system.

↓

### Step 2 – Workforce Scheduling

Managers assign or review employee work schedules while considering employee availability and organizational constraints.

↓

### Step 3 – Fatigue Monitoring

The system evaluates employee workload, weekly working hours, fatigue thresholds, and scheduling violations.

↓

### Step 4 – Leave Management

Employee leave requests are processed and checked against existing schedules to identify potential conflicts.

↓

### Step 5 – AI Recommendation Generation

The AI component analyses employee workload, fatigue risk, shift allocation, and leave status to generate intelligent scheduling recommendations.

↓

### Step 6 – Manager Review

Managers review the generated recommendations and approve or reject the suggested actions.

---

# AI / ML / Agent / Software Component

The project incorporates a **Rule-Based AI Recommendation Engine** that acts as an intelligent decision-support system for workforce scheduling.

### Inputs

- Employee Information
- Weekly Working Hours
- Current Shift Allocation
- Fatigue Risk Level
- Leave Status

### Processing

The AI evaluates:

- Excessive weekly workload
- Fatigue thresholds
- Consecutive night shifts
- Approved leave requests
- Workforce scheduling constraints

### Outputs

The AI generates:

- Workforce Assessment
- Scheduling Recommendation
- Expected Operational Outcome
- AI Confidence Score

The recommendations assist managers in making informed scheduling decisions while reducing fatigue-related operational risks.

---

# How to Run the Project

## 1. Clone the Repository

```bash
git clone <repository-url>
```

## 2. Navigate to the Frontend

```bash
cd frontend
```

## 3. Install Dependencies

```bash
npm install
```

## 4. Start the Development Server

```bash
npm run dev
```

## 5. Open the Application

Visit:

```
http://localhost:5173
```

The application provides the following modules:

- Home
- Dashboard
- Employee Management
- Shift Scheduling
- Fatigue Monitoring
- AI Recommendations
- Leave Management

---

# Demo Screenshots

## Home Page

<img width="1656" height="906" alt="image" src="https://github.com/user-attachments/assets/ba6ccbe5-2a15-4040-9dd3-18434b68abb2" />

---

## Dashboard

<img width="1662" height="905" alt="image" src="https://github.com/user-attachments/assets/ce565592-0842-4171-bbbf-b4226524f1e8" />

---

## Employee Management

<img width="1662" height="867" alt="image" src="https://github.com/user-attachments/assets/044c0c82-0994-4c18-b1ca-dd38b44899e7" />

---

## Shift Scheduling

<img width="1588" height="871" alt="image" src="https://github.com/user-attachments/assets/2d450252-7503-4679-b1ed-34f2a4656954" />
<img width="818" height="830" alt="image" src="https://github.com/user-attachments/assets/d449cc34-047c-4d46-bd32-bae1d48c8528" />

---

## Fatigue Monitoring

<img width="1635" height="873" alt="image" src="https://github.com/user-attachments/assets/ef2a1bc4-7078-4c2a-b979-cc9716343e11" />

---

## AI Recommendations

<img width="1630" height="722" alt="image" src="https://github.com/user-attachments/assets/95a62b88-48b1-413c-90be-b2b45f98c1f2" />

---

## Leave Management

<img width="1640" height="860" alt="image" src="https://github.com/user-attachments/assets/8f7c6878-27c0-4417-9439-a582b039a707" />

---

# Results and Insights

The developed system successfully demonstrates:

- Centralized workforce management through a unified dashboard.
- Efficient employee scheduling and shift management.
- Automated fatigue risk monitoring using predefined workforce rules.
- Intelligent AI-assisted workforce recommendations.
- Leave request processing with conflict awareness.
- Improved visibility into workforce allocation and employee wellbeing.
- Reduced dependence on manual scheduling processes.

The project illustrates how intelligent decision-support systems can improve workforce planning while promoting employee safety and operational productivity.

---

# Limitations

- Uses simulated workforce datasets rather than real organizational data.
- AI recommendations are generated using a rule-based approach rather than predictive machine learning.
- No real-time synchronization with HRMS or ERP platforms.
- Authentication and role-based access control may be limited depending on deployment.
- Scheduling decisions are constrained by predefined business rules.

---

# Future Improvements

- Machine Learning-based fatigue prediction.
- Real-time workforce optimization.
- Integration with HRMS and payroll systems.
- Automated email and notification services.
- Mobile application support.
- Explainable AI recommendations.
- Multi-location workforce management.
- Real-time analytics dashboard.
- Calendar synchronization.
- Predictive scheduling using historical workforce trends.

---

# Team Member Names

| Name | Responsibility |
|------|----------------|
| Anna Andrew | Backend Development |
| Anushka Yadav | Documentation |
| Diya Alka Abhilash | Frontend Development |
| Santhipriya R | Demo Video<br>Documentation |
| Vedanti Sharma | Dataset Preparation <br> Documentation |
