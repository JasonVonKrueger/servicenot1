#!/bin/bash

# Developer Workspace Installation Script
# This script helps prepare the workspace configuration for ServiceNow import

echo "=========================================="
echo "Developer Workspace Installation Helper"
echo "=========================================="
echo ""

WORKSPACE_DIR="dev-workspace"

# Verify files exist
echo "Checking configuration files..."
if [ ! -f "$WORKSPACE_DIR/schemas/peer_review_table.json" ]; then
    echo "ERROR: peer_review_table.json not found"
    exit 1
fi

if [ ! -f "$WORKSPACE_DIR/schemas/dev_schedule_table.json" ]; then
    echo "ERROR: dev_schedule_table.json not found"
    exit 1
fi

if [ ! -f "$WORKSPACE_DIR/configs/workspace_config.json" ]; then
    echo "ERROR: workspace_config.json not found"
    exit 1
fi

if [ ! -f "$WORKSPACE_DIR/navigation/menu_config.json" ]; then
    echo "ERROR: menu_config.json not found"
    exit 1
fi

echo "✓ All configuration files found"
echo ""

# Validate JSON syntax
echo "Validating JSON syntax..."
for json_file in "$WORKSPACE_DIR"/schemas/*.json "$WORKSPACE_DIR"/configs/*.json "$WORKSPACE_DIR"/navigation/*.json; do
    if command -v python3 &> /dev/null; then
        if ! python3 -m json.tool "$json_file" > /dev/null 2>&1; then
            echo "ERROR: Invalid JSON in $json_file"
            exit 1
        fi
    fi
done
echo "✓ All JSON files are valid"
echo ""

# Display summary
echo "Configuration Summary:"
echo "----------------------"
echo "Tables to create: 2"
echo "  - u_code_peer_review (Code Peer Review)"
echo "  - u_developer_schedule (Developer Schedule)"
echo ""
echo "Workspace: Developer Command Center"
echo "  - Sidebar navigation with 4 sections"
echo "  - 13 navigation items"
echo "  - 2 quick actions"
echo ""
echo "Next Steps:"
echo "1. Review the configuration files in $WORKSPACE_DIR/"
echo "2. Import tables using ServiceNow Studio or Table Creator"
echo "3. Configure workspace using Agent Workspace Designer"
echo "4. Set up navigation menu in Application Navigator"
echo "5. Assign appropriate roles to users"
echo ""
echo "For detailed instructions, see $WORKSPACE_DIR/README.md"
echo ""
echo "Installation preparation complete!"
