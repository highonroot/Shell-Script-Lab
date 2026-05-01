# Shell-Script-Lab

This repository contains my Linux shell scripting projects.

## Scripts

### 1. system-monitor.sh
- Displays top CPU-consuming processes
- Shows memory usage
- Shows disk usage
- Displays warning when disk usage exceeds a threshold

  **Usage:**
```bash
chmod +x system-monitor.sh
./system-monitor.sh
```

### 2. url-status.sh
- Takes a URL as input
- Checks if the website is reachable
- Outputs whether the site is UP or DOWN

  **Usage:**
```bash
chmod +x url-status.sh
./url-status.sh https://example.com
```

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
```bash
chmod +x check-permission.sh
./check-permission.sh example.txt
```

### 4. path-info.sh
- Displays metadata for a file or directory
- Shows:
  - File name and type
  - Size
  - Last modified time
  - Permissions
- For directories:
  - Total size
  - Number of files
  - Number of subdirectories
  - Permissions
 
  **Usage:**
```bash
chmod +x path-info.sh
./path-info.sh <path>
```

### 5. cleanup.sh
- Cleans files based on user-specified extension (e.g. `.log`, `.tmp`, `.bak`)
- Validates and sanitizes user input for safe execution
- Counts matching files before deletion
- Optionally displays files before deleting
- Uses interactive confirmation to prevent accidental deletion
- Calculates and displays space usage before and after cleanup
- Shows freed space in human-readable format (with fallback if `numfmt` is unavailable)

  **Usage:**
```bash
chmod +x cleanup.sh
./cleanup.sh <path/to/directory>
```

### 6. process-killer.sh
- Displays top running processes for quick reference
- Accepts process name or PID as input
- Shows matching processes before taking action
- Requires user confirmation before termination
- Supports normal kill (SIGTERM) and force kill (SIGKILL)
- Handles multiple processes when using name input
- Provides success/failure feedback for each process
- Displays updated process list after execution

  **Usage:**
```bash
chmod +x process-killer.sh
./process-killer.sh
```
