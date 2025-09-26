
Mac Process Management Tutorial Script
 1.⁠ ⁠List All Processes
# List all running processes with user and CPU/memory usage
ps aux
Narration:
“This command shows all processes running on your Mac, who owns them, and how much CPU and memory they are using.”

 2.⁠ ⁠View Process Tree
# Show hierarchical process tree
ps -ejH
Narration:
“This command shows parent-child relationships between processes. You can see which process started which.”

 3.⁠ ⁠Real-Time Process Monitoring
# Monitor processes live
top
Narration:
“Top lets you see processes in real time, including CPU and memory usage. Press q to quit.”

Optional GUI alternative:
Open Activity Monitor from Applications → Utilities for a visual interface.

 4.⁠ ⁠Adjust Process Priority
# Start a process with low priority

nice -n 10 sleep 300 &

# Change priority of running process

renice -n -5 -p <PID>

Narration:
“Use nice to start a process with lower priority, and renice to change the priority of a running process. Higher priority processes get more CPU time.”

 5.⁠ ⁠CPU Affinity (Optional / Advanced)
# Install cpuset via Homebrew
brew install cpuset

# Bind a process to CPU cores
sudo cpuset -l 0,1 -p <PID>
Narration:
“Mac doesn’t have built-in CPU affinity, but you can use cpuset to restrict a process to certain CPU cores.”

 6.⁠ ⁠Check Open Files by a Process
# List open files for a process
lsof -p <PID> | head -5
Narration:
“This shows the files, directories, and network connections a process is currently using.”

 7.⁠ ⁠Trace System Calls
# Trace system calls (similar to strace)
sudo dtruss -p <PID>
Narration:
“Dtruss helps debug processes by showing system calls they perform.”

 8.⁠ ⁠Find Process Using a Port
# Find process using port 8080
sudo lsof -i :8080
Narration:
“This shows which process is using a specific port on your Mac.”

 9.⁠ ⁠Per-Process Statistics
# Monitor a specific process in real time
top -pid <PID>
Narration:
“Use top with a PID to watch CPU and memory usage of a specific process.”

10.⁠ ⁠Notes on cgroups / I/O Scheduling
Mac doesn’t support Linux cgroups. Resource limits are handled automatically by the system.

ionice has no Mac equivalent; Mac I/O scheduling is automatic.

Narration:
“Some Linux features like cgroups and ionice don’t exist on Mac. The system manages resources automatically.”

Tips for Recording the Video
Open Terminal in full screen for clarity.

Use slow typing and explain each command.

Use sleep or short pauses between commands to let viewers read outputs.

Highlight important outputs with comments or narration.

For visual learners, also show Activity Monitor for real-time monitoring.

I can also create a ready-to-use narration script for voice-over that matches these commands, so you can directly record it for your video.

Do you want me to make that?