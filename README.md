# Workforce Shift Planning and Fatigue Risk Management System

A workforce scheduling tool that flags fatigue risk in employee shift schedules using rule-based checks (rest gaps, consecutive nights, weekly hour caps) and explains flagged risks in plain English using an AI layer.

## Problem Statement

Manual shift scheduling often overlooks cumulative fatigue effects — a schedule can look fine shift-by-shift while still stacking up insufficient rest gaps or too many consecutive night shifts. This system checks proposed and existing schedules against configurable, per-employee fatigue policies and flags risk before it becomes a safety or performance issue.

## Users / Stakeholders

- **Shift managers** — assign shifts, view risk-flagged schedules before finalizing them
- **Employees** — view their own upcoming schedule and any flagged fatigue warnings
- **Occupational health / HR** — the system's flags support, but don't replace, their oversight (Indirectly)

## Dataset Description


| File | Columns | Description |
|---|---|---|
| `employees.csv` | `EmployeeID, EmployeeName` | Employee roster |
| `shifts.csv` | `EmployeeID, Shifts` | Shift types (Day/Evening/Night/Weekend) each employee is qualified/willing to work |
| `availability.csv` | `EmployeeID, AvailabilityDays` | Days of week each employee is available |
| `fatigue_rules.csv` | `EmployeeID, FatigueRules` | Per-employee fatigue policy limits (max shift length, min rest, max consecutive nights, max weekly hours) |
| `schedule.csv` | `EmployeeID, Date, ShiftType, StartTime, EndTime` | Actual dated shift assignments — this is what the fatigue engine evaluates |

50 employees, with a handful of deliberately risky schedules baked into `schedule.csv` (e.g. forced consecutive night runs) to give the fatigue engine real test cases.

## Tech Stack

## Project Workflow

## Team Members

## Limitations and Responsible Use

## Project Structure
