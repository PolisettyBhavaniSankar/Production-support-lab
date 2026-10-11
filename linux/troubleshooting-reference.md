# Linux Troubleshooting Reference

This reference documents Unix/Linux commands used for application
and production-support troubleshooting.

## 1. Navigation

### pwd
Shows the current working directory.

```bash
pwd

Production support use:
Confirm the current location before working with logs or files.

ls

Lists files and directories.

ls
ls -l

Production support use:
Check available files, permissions, ownership, and timestamps.

cd

Changes the current directory.

cd logs
cd ..
cd /

Production support use:
Navigate to application and log directories.

2. File Management
mkdir

Creates a directory.

mkdir logs
touch

Creates an empty file.

touch application.log
cp

Copies a file.

cp application.log application_backup.log
mv

Moves or renames a file.

mv application_backup.log logs/
mv error.log application_error.log
rm

Removes a file.

rm test.log

Production support use:
Manage log files and investigation artifacts carefully.
Never delete production files without following the approved procedure.

3. File and Log Inspection
cat

Displays the complete contents of a file.

cat application.log
head

Displays the beginning of a file.

head -3 application.log
tail

Displays the end of a file.

tail -2 application.log
less

Allows a file to be viewed page by page.

less application.log
tail -f

Continuously monitors new log entries.

tail -f application.log

Production support use:
Monitor application logs during incidents and deployments.

4. Log Searching
grep

Searches for a specific pattern.

grep "ERROR" application.log
grep -i

Performs a case-insensitive search.

grep -i "error" application.log
grep -n

Shows matching line numbers.

grep -n "ERROR" application.log
grep -v

Shows lines that do not match the pattern.

grep -v "INFO" application.log
find

Searches for files and directories.

find . -name "*.log"

Production support use:
Locate log files and identify errors, warnings, transaction IDs,
and important timestamps.

5. Pipes and Redirection
Pipe |

Passes the output of one command to another command.

grep "ERROR" application.log | wc -l

Example:
Count the number of ERROR entries.

Output redirection >

Writes output to a file and replaces existing content.

grep "ERROR" application.log > error.txt
Append >>

Adds output to the end of a file.

grep "WARN" application.log >> error.txt
Input redirection <

Provides a file as input to a command.

wc -l < application.log

Production support use:
Filter, count, and collect useful log information during incident
investigation.

6. Process Investigation
ps

Displays running processes.

ps -ef
ps -p

Checks a specific process using its PID.

ps -p 1234 -f
top

Displays running processes and resource usage.

top
kill

Sends a signal to a process.

kill 1234

Production support use:
Check whether an application process is running and investigate
process-related incidents.

Always follow the approved production procedure before stopping
or restarting a real application process.

7. Disk Space Investigation
df -h

Shows filesystem disk usage in human-readable format.

df -h
du -sh

Shows the size of a directory or file.

du -sh logs/
du -xhd1

Shows disk usage for directories at the current level.

du -xhd1 .

Production support use:
Investigate disk-space alerts and identify directories or files
consuming significant space.

8. Permissions
ls -l

Displays file permissions, owner, and group.

ls -l
chmod

Changes file or directory permissions.

chmod 644 application.log
chmod 755 script.sh

Common permission values:

600 - owner read/write
644 - owner read/write, others read
700 - owner full access
755 - owner full access, others read/execute
chown

Changes file ownership.

chown user:group application.log

Production support use:
Investigate permission-related application failures and ownership
issues.

Do not use broad permissions such as 777 unless explicitly required
and approved.

9. Typical Production Troubleshooting Flow

A basic Linux application-support investigation can follow this flow:

Confirm the server/location.
Check whether the application process is running.
Check application logs.
Search for ERROR and WARN messages.
Check timestamps and transaction IDs.
Check disk usage if relevant.
Check permissions if relevant.
Correlate findings with database or application information.
Document the evidence.
Escalate to the appropriate L2/development/infrastructure team
when deeper investigation is required.
Key Principle

Linux commands are not used in isolation.

The objective is to use the commands to collect technical evidence,
understand the incident, identify the observed cause, and support
effective escalation and resolution.
