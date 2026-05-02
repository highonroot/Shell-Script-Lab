# Shell Script Lab

A collection of practical Linux shell utilities focused on system monitoring, file inspection, network diagnostics, and process control.

This repository reflects a progression from basic scripting concepts to building small, usable command-line tools. Each script is designed to solve a specific real-world task while maintaining clear input handling, validation, and readable output.

## What this repository demonstrates
- Working with files, directories, and permissions
- Process inspection and controlled termination
- Network diagnostics (DNS, reachability, HTTP checks)
- Safe handling of user input and edge cases
- Building interactive CLI-style scripts in Bash

## Scripts Included

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

### 2. netprobe.sh
- Checks the status of a website using multiple layers of diagnostics
- Performs DNS resolution and displays IPv4/IPv6 addresses
- Tests network reachability using ping
- Retrieves HTTP status code and response time
- Handles URLs with or without protocol (http/https)

  **Usage:**
```bash
chmod +x netprobe.sh
./netprobe.sh https://example.com
./netprobe.sh example.com
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
- Matches processes accurately when using name input
- Shows matching processes before taking action
- Requires user confirmation before termination
- Supports normal (SIGTERM) and force (SIGKILL) termination
- Handles multiple processes safely with sequential killing
- Provides clear success/failure feedback for each process
- Displays updated process list after execution

  **Usage:**
```bash
chmod +x process-killer.sh
./process-killer.sh
```

---

This project is part of my hands-on learning in Linux and shell scripting, focused on building small, reliable tools rather than isolated examples.
