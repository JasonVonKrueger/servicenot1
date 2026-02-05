# ServiceNow Developer Workspace

A modern, customizable developer workspace for ServiceNow with integrated peer review and schedule management.

## What's Included

This repository provides a complete developer dashboard/workspace configuration for ServiceNow featuring:

- **Developer Command Center Workspace**: A sidebar-based workspace for centralized team management
- **Code Peer Review Table**: Track and manage code review sessions
- **Developer Schedule Table**: Manage team availability and work schedules
- **Sidebar Navigation**: Organized navigation with 4 sections and 13 menu items
- **Quick Actions**: Fast access to common tasks

## Quick Start

```bash
# Validate the configuration
./install.sh
```

Then follow the installation instructions in `dev-workspace/README.md`

## Repository Structure

```
servicenot1/
├── dev-workspace/
│   ├── schemas/              # Table definitions
│   ├── configs/              # Workspace configuration
│   ├── navigation/           # Menu configuration
│   └── README.md            # Detailed documentation
├── install.sh               # Installation helper script
└── README.md               # This file
```

## Features

### 1. Sidebar Navigation
- Overview section with dashboard and metrics
- Code Reviews section with filtered views
- Team Schedules section with availability tracking
- Developer Tools section for quality and documentation

### 2. Peer Review Management
- Schedule and track code reviews
- Quality scoring system (1-10)
- Status tracking (Scheduled, In Progress, Completed, Cancelled)
- Feedback and action item documentation

### 3. Schedule Management
- Developer availability tracking
- Shift timing management
- Location tracking (office/remote)
- Sprint and task assignment visibility

## Documentation

For complete documentation, installation instructions, and customization guide, see:
- [Developer Workspace Documentation](dev-workspace/README.md)

## Tables Created

1. **u_code_peer_review** - Code Peer Review table with 8 custom fields
2. **u_developer_schedule** - Developer Schedule table with 8 custom fields

## Configuration Files

- `schemas/peer_review_table.json` - Peer review table structure
- `schemas/dev_schedule_table.json` - Developer schedule table structure
- `configs/workspace_config.json` - Complete workspace configuration with sidebar
- `navigation/menu_config.json` - Application menu items

## Requirements

- ServiceNow instance (Madrid release or later)
- System Administrator role or equivalent permissions
- Access to ServiceNow Studio or Table Creator

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

## License

This project is provided as-is for use with ServiceNow instances.
