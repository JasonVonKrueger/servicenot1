# Developer Workspace Application

A comprehensive ServiceNow workspace for development teams with integrated peer review tracking and schedule management.

## Overview

The Developer Command Center provides a centralized dashboard for managing:
- Code peer reviews and quality assessments
- Developer schedules and availability tracking
- Team collaboration and visibility

## Features

### 1. Sidebar Navigation
- Organized sections for Overview, Code Reviews, Team Schedules, and Developer Tools
- Quick access to filtered views (My Reviews, Pending Reviews, Team Availability)
- Customizable navigation items with icons and routes

### 2. Code Peer Review Table (`u_code_peer_review`)
Tracks peer review sessions with the following capabilities:
- Reviewer and reviewee assignment
- Review status tracking (Scheduled, In Progress, Completed, Cancelled)
- Code quality scoring (1-10 scale)
- Feedback notes and action items
- Code module/component tracking

### 3. Developer Schedule Table (`u_developer_schedule`)
Manages team availability with:
- Shift timing (start/end times)
- Availability status (Available, Busy, In Meeting, PTO, On-Call)
- Current sprint information
- Task assignment summary
- Location tracking
- Schedule notes

## Directory Structure

```
dev-workspace/
├── schemas/
│   ├── peer_review_table.json    # Peer review table definition
│   └── dev_schedule_table.json   # Developer schedule table definition
├── configs/
│   └── workspace_config.json     # Workspace and sidebar configuration
└── navigation/
    └── menu_config.json          # Application menu items
```

## Installation

### Prerequisites
- ServiceNow instance (Madrid or later)
- System Administrator or appropriate role
- Studio or Update Set XML access

### Setup Steps

1. **Create Tables**
   - Import the table definitions from `schemas/peer_review_table.json`
   - Import the table definitions from `schemas/dev_schedule_table.json`
   - Ensure proper ACLs are configured for developer roles

2. **Configure Workspace**
   - Use the configuration in `configs/workspace_config.json`
   - Set up the workspace with sidebar layout
   - Configure navigation sections and items

3. **Set Up Navigation**
   - Import menu configuration from `navigation/menu_config.json`
   - Assign appropriate roles to menu items
   - Test navigation accessibility

4. **Customize (Optional)**
   - Adjust theme colors in workspace configuration
   - Modify sidebar width or position
   - Add custom fields to tables as needed

## Configuration Files

### peer_review_table.json
Defines the structure of the Code Peer Review table including:
- Field definitions and types
- Mandatory field requirements
- Choice list values for status
- Table extension and relationships

### dev_schedule_table.json
Defines the structure of the Developer Schedule table including:
- Datetime fields for shift timing
- Availability status choices
- Sprint and task tracking fields
- Location and notes fields

### workspace_config.json
Complete workspace configuration with:
- Layout settings (sidebar position, width)
- Theme customization (colors)
- Sidebar navigation structure
- Quick action buttons
- Dashboard widgets

### menu_config.json
Application menu configuration with:
- Menu item definitions
- Role-based access control
- Target tables and views
- Item ordering

## Usage

### Accessing the Workspace
1. Navigate to the Developer Workspace menu
2. Click "Open Workspace" to launch the Command Center
3. Use the sidebar to navigate between sections

### Managing Peer Reviews
1. Navigate to "Code Reviews" section in sidebar
2. Click "All Peer Reviews" to see all reviews
3. Use "Schedule Peer Review" quick action to create new reviews
4. Filter by "My Reviews" or "Pending Reviews" for focused views

### Managing Schedules
1. Navigate to "Team Schedules" section in sidebar
2. Click "All Schedules" to view team calendar
3. Use "Update My Schedule" quick action to update availability
4. Check "Team Availability" to see who's currently available

## Customization

### Adding New Navigation Items
Edit `configs/workspace_config.json` and add items to the appropriate section:
```json
{
  "id": "custom_item",
  "label": "Custom Item",
  "icon": "custom-icon",
  "route": "/workspace/dev_command_center/custom",
  "order": 4
}
```

### Adding Custom Fields
Edit the respective schema file and add field definitions:
```json
{
  "columnName": "u_custom_field",
  "fieldType": "string",
  "maxLength": 100,
  "label": "Custom Field"
}
```

### Modifying Theme
Update the theme section in `workspace_config.json`:
```json
"theme": {
  "primaryColor": "#your-color",
  "secondaryColor": "#your-color",
  "accentColor": "#your-color",
  "backgroundColor": "#your-color"
}
```

## Table Field Reference

### Code Peer Review Fields
- `u_reviewer_name`: Name of the person conducting the review
- `u_reviewee_name`: Name of the developer being reviewed
- `u_review_date`: Date the review is scheduled/conducted
- `u_code_quality_score`: Numeric score from 1-10
- `u_review_status`: Current status of the review
- `u_code_module`: Component or module being reviewed
- `u_feedback_notes`: Detailed feedback from the review
- `u_action_items`: Follow-up tasks or improvements needed

### Developer Schedule Fields
- `u_developer_name`: Name of the developer
- `u_shift_start`: Start time of the work shift
- `u_shift_end`: End time of the work shift
- `u_availability_status`: Current availability status
- `u_current_sprint`: Active sprint identifier
- `u_assigned_tasks`: Summary of current task assignments
- `u_location`: Physical or remote work location
- `u_notes`: Additional schedule information

## Best Practices

1. **Regular Review Scheduling**: Schedule peer reviews in advance for better planning
2. **Status Updates**: Keep availability status current for team visibility
3. **Action Item Tracking**: Use action items field to track follow-ups
4. **Quality Scoring**: Use consistent criteria for code quality scores
5. **Schedule Notes**: Document any special scheduling considerations

## Support and Contributions

For issues, enhancements, or contributions, please refer to the repository's issue tracker.

## License

This configuration is provided as-is for use in ServiceNow instances.
