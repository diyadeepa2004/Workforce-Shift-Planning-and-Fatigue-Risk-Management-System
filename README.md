# Workforce Shift Planning and Fatigue Risk Management System

A workforce scheduling tool that flags fatigue risk in employee shift schedules using rule-based checks (rest gaps, consecutive nights, weekly hour caps) and explains flagged risks in plain English using an AI layer.

## Problem Statement

Manual shift scheduling often overlooks cumulative fatigue effects — a schedule can look fine shift-by-shift while still stacking up insufficient rest gaps or too many consecutive night shifts. This system checks proposed and existing schedules against configurable, per-employee fatigue policies and flags risk before it becomes a safety or performance issue.

## Users / Stakeholders

- **Shift managers** — assign shifts, view risk-flagged schedules before finalizing them
- **Employees** — view their own upcoming schedule and any flagged fatigue warnings
- **(Indirectly) Occupational health / HR** — the system's flags support, but don't replace, their oversight

## Dataset Description


| File | Columns | Description |
|---|---|---|
| `employees.csv` | `EmployeeID, EmployeeName` | Employee roster |
| `shifts.csv` | `EmployeeID, Shifts` | Shift types (Day/Evening/Night/Weekend) each employee is qualified/willing to work |
| `availability.csv` | `EmployeeID, AvailabilityDays` | Days of week each employee is available |
| `fatigue_rules.csv` | `EmployeeID, FatigueRules` | Per-employee fatigue policy limits (max shift length, min rest, max consecutive nights, max weekly hours) |
| `schedule.csv` | `EmployeeID, Date, ShiftType, StartTime, EndTime` | Actual dated shift assignments — this is what the fatigue engine evaluates |

50 employees, with a handful of deliberately risky schedules baked into `schedule.csv` (e.g. forced consecutive night runs) to give the fatigue
engine real test cases.

## Tech Stack

- **Backend:** Node.js + Express
- **Data layer:** CSV files, parsed with `csv-parse`
- **AI layer:** Claude API for plain-English fatigue explanations
- **Frontend:** *(TBD by frontend lead — recommend a lightweight SPA or simple HTML/JS dashboard)*
- **Testing:** Jest + Supertest

## Project Workflow

## Team Members

## Limitations and Responsible Use

- This system is **not a substitute for occupational health guidance**. It is a scheduling aid, not a medical or safety certification tool.
- Fatigue-risk thresholds (`fatigue_rules.csv`) and scoring weights (`docs/fatigue_rules_paper_draft.md`) are **illustrative, not clinically validated** — they were chosen for a workable classroom demonstration, not derived from occupational-health research.
- AI-generated explanations and suggestions should always be **reviewed by a human manager** before acting on them — the AI layer explains a rule-based score, it does not independently assess real-world risk.
- The system does not account for individual medical conditions, personal circumstances, or factors outside the four modeled fatigue factors (shift length, rest gap, consecutive nights, weekly hours).
- Sample data (`schedule.csv`) is synthetically generated for testing and demo purposes, not real employee data.

## Project Structure
