# Developer Workspace - Quick Reference Guide

## Workspace Structure Overview

```
┌─────────────────────────────────────────────────────────┐
│  Developer Command Center                               │
├──────────────────┬──────────────────────────────────────┤
│                  │                                       │
│   SIDEBAR        │   CONTENT AREA                       │
│   (250px)        │                                       │
│                  │   ┌──────────────────────────┐      │
│  Dev Hub 🔧      │   │  Dashboard Home          │      │
│                  │   │  - Review Statistics     │      │
│  Overview        │   │  - Today's Schedule      │      │
│  ├─ Dashboard    │   │  - Quick Actions         │      │
│  └─ Metrics      │   └──────────────────────────┘      │
│                  │                                       │
│  Code Reviews    │                                       │
│  ├─ All Reviews  │                                       │
│  ├─ My Reviews   │                                       │
│  └─ Pending      │                                       │
│                  │                                       │
│  Team Schedules  │                                       │
│  ├─ All Schedules│                                       │
│  ├─ My Schedule  │                                       │
│  └─ Availability │                                       │
│                  │                                       │
│  Developer Tools │                                       │
│  ├─ Code Quality │                                       │
│  └─ Docs         │                                       │
│                  │                                       │
└──────────────────┴──────────────────────────────────────┘
```

## Table Schemas

### 1. Code Peer Review (u_code_peer_review)

| Field | Type | Description |
|-------|------|-------------|
| u_reviewer_name | String(150) | Name of reviewer (required) |
| u_reviewee_name | String(150) | Developer being reviewed (required) |
| u_review_date | Date | Review date (required) |
| u_code_quality_score | Integer | Score 1-10 |
| u_review_status | Choice | scheduled/in_progress/completed/cancelled |
| u_code_module | String(200) | Module or component name |
| u_feedback_notes | Text | Detailed feedback |
| u_action_items | Text | Follow-up actions |

**Extends:** task table

### 2. Developer Schedule (u_developer_schedule)

| Field | Type | Description |
|-------|------|-------------|
| u_developer_name | String(150) | Developer name (required) |
| u_shift_start | DateTime | Shift start (required) |
| u_shift_end | DateTime | Shift end (required) |
| u_availability_status | Choice | available/busy/meeting/pto/oncall |
| u_current_sprint | String(100) | Active sprint |
| u_assigned_tasks | Text | Task summary |
| u_location | String(100) | Work location |
| u_notes | Text | Additional notes |

**Extends:** sys_metadata table

## Navigation Menu Items

### Main Menu Items
1. **Open Workspace** → Developer Command Center
2. **Peer Reviews** → List view of u_code_peer_review
3. **Developer Schedules** → List view of u_developer_schedule

## Quick Actions

1. **Schedule Peer Review** - Creates new review record
2. **Update My Schedule** - Creates new schedule entry

## Sidebar Sections

### Section 1: Overview
- Dashboard Home - Main landing page
- Team Metrics - Performance metrics

### Section 2: Code Reviews  
- All Peer Reviews - Complete list
- My Reviews - Filtered to current user as reviewer
- Pending Reviews - Filtered to scheduled status

### Section 3: Team Schedules
- All Schedules - Complete calendar view
- My Schedule - Current user's schedule
- Team Availability - Filtered to available status

### Section 4: Developer Tools
- Code Quality - Quality metrics and tools
- Documentation - Team documentation

## Common Use Cases

### Schedule a Peer Review
1. Click "Schedule Peer Review" quick action
2. Fill in reviewer and reviewee names
3. Set review date
4. Select code module
5. Set status to "scheduled"

### Update Your Availability
1. Click "Update My Schedule" quick action
2. Enter shift start/end times
3. Set availability status
4. Add current sprint info
5. Include location

### View Team Availability
1. Navigate to "Team Schedules" section
2. Click "Team Availability"
3. See all developers with "available" status

### Track Your Reviews
1. Navigate to "Code Reviews" section
2. Click "My Reviews"
3. View all reviews where you are the reviewer

## Color Scheme

- **Primary Color:** #0066cc (Blue)
- **Secondary Color:** #5c9fd8 (Light Blue)
- **Accent Color:** #ff6b35 (Orange)
- **Background:** #f5f7fa (Light Gray)

## Role Requirements

The following roles should have access:
- developer
- admin

## File Locations

- Table Schemas: `dev-workspace/schemas/`
- Workspace Config: `dev-workspace/configs/workspace_config.json`
- Navigation Menu: `dev-workspace/navigation/menu_config.json`
- Documentation: `dev-workspace/README.md`
- Installation Script: `install.sh`

## Key Configuration Values

### Workspace ID
`dev_command_center`

### Table Names
- Peer Reviews: `u_code_peer_review`
- Dev Schedules: `u_developer_schedule`

### Sidebar Settings
- Position: left
- Width: 250px
- Layout: fluid content area

## Installation Checklist

- [ ] Run `./install.sh` to validate configurations
- [ ] Create u_code_peer_review table in ServiceNow
- [ ] Create u_developer_schedule table in ServiceNow
- [ ] Configure workspace in Agent Workspace Designer
- [ ] Set up navigation menu items
- [ ] Assign roles to users
- [ ] Test all navigation links
- [ ] Verify table permissions
- [ ] Customize theme colors (optional)
- [ ] Add initial data for testing

## Tips

1. Use consistent naming for developers across both tables
2. Keep availability status updated for accurate team visibility
3. Document action items from peer reviews for tracking
4. Use the quality score consistently (establish team standards)
5. Update schedules at the start of each sprint
6. Use filters in sidebar navigation for focused views

## Support

For detailed information, see the complete documentation in `dev-workspace/README.md`.
