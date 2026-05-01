#!/bin/bash

echo "Top running processes:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 10
echo ""

while true; do
    read -p "Do you want to kill a process? (y/n): " kill_proc
    kill_proc=$(echo "$kill_proc" | tr 'A-Z' 'a-z')

    echo ""

    if [ "$kill_proc" = "y" ]; then

        read -p "Enter process name or PID: " target
        [ -z "$target" ] && echo "Provide process name or PID" && continue

        if [[ "$target" =~ ^[0-9]+$ ]]; then
            mode="pid"
            proc=$(ps -p "$target" -o pid,comm,%cpu,%mem --no-headers)
        else
            mode="name"
            proc=$(pgrep -fl "$target")
        fi

        if [ -z "$proc" ]; then
            echo "No matching process found"
            continue
        fi

        echo ""
        echo "Matching processes:"
        echo "$proc"
        echo ""

        while true; do
            read -p "Kill these processes? (y/n): " confirm
            confirm=$(echo "$confirm" | tr 'A-Z' 'a-z')

            if [ "$confirm" = "y" ]; then

                read -p "Force kill? SIGKILL instead of SIGTERM (y/n): " force
                force=$(echo "$force" | tr 'A-Z' 'a-z')

                if [ "$force" = "y" ]; then
                    signal="-9"
                else
                    signal="-15"
                fi

                if [ "$mode" = "pid" ]; then
                    if kill $signal "$target" 2>/dev/null; then
                        echo "Killed PID $target"
                    else
                        echo "Failed to kill PID $target"
                    fi
                else
                    pids=$(pgrep -f "$target")

                    for pid in $pids; do
                        if kill $signal "$pid" 2>/dev/null; then
                            echo "Killed PID $pid"
                        else
                            echo "Failed to kill PID $pid"
                        fi
                    done
                fi

                echo ""
                echo "Updated process list:"
                sleep 1
                ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 10
                echo ""
                break

            elif [ "$confirm" = "n" ]; then
                echo "Operation cancelled"
                echo ""
                break

            else
                echo "Invalid input. Enter y or n."
            fi
        done

    elif [ "$kill_proc" = "n" ]; then
        echo "No process terminated"
        break

    else
        echo "Invalid input. Enter y or n."
        echo ""
    fi
done
