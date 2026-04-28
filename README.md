# Shell-Script-Lab

This repository contains my Linux shell scripting projects.

## Scripts

### 1. system-monitor.sh
- Displays top CPU-consuming processes
- Shows memory usage
- Shows disk usage
- Displays warning when disk usage exceeds a threshold

  **Usage:**
  - chmod +x system-monitor.sh
  - ./system-monitor.sh

### 2. url-status.sh
- Takes a URL as input
- Checks if the website is reachable
- Outputs whether the site is UP or DOWN

  **Usage:**
  - chmod +x url-status.sh
  - ./url-status.sh https://example.com

### 3. check-permission.sh
- Displays file type and permissions in human-readable format
- Breaks down permissions for:
  - Owner
  - Group
  - Others
- Detects potential security risks:
  - World-writable files
  - World-executable files

  **Usage:**
  - chmod +x check-permission.sh
  - ./check-permission.sh example.txt 
