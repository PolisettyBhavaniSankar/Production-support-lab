# Production Application Support & Incident Troubleshooting Lab

A simulated banking production-support environment built to demonstrate
application troubleshooting, transaction investigation, log analysis,
Unix/Linux troubleshooting, SQL validation, and incident RCA.

## Project Objective

This project simulates real-world banking application production-support
scenarios and demonstrates how a Production Support engineer can investigate
production incidents using Unix/Linux commands, application logs, SQL
queries, and incident management practices.

The project focuses on identifying issues, collecting technical evidence,
correlating application and database information, and documenting findings
and resolution steps.

## Technologies & Tools

- Unix/Linux
- SQL Server
- SQL
- ServiceNow concepts
- Application and database log analysis
- Batch/job monitoring concepts
- Incident investigation
- Root Cause Analysis (RCA)
- Git & GitHub
- Google Cloud Shell

## Architecture

The project follows a simulated production-support investigation flow:

Banking Transaction Data
        |
        v
Application / Batch Processing
        |
        v
Application & Database Logs
        |
        v
Unix/Linux Investigation
        |
        v
SQL-Based Data Validation
        |
        v
Incident Investigation
        |
        v
Root Cause Analysis (RCA)
        |
        v
Incident Documentation

## Incident Scenarios

The lab simulates common production-support incidents in a banking
application environment:

1. Database connectivity issue
2. Batch job failure
3. Application process down
4. Disk-space investigation

For each incident, the investigation includes:

- Identifying the issue
- Reviewing application, database, or batch logs
- Using Unix/Linux commands for investigation
- Validating transaction data using SQL
- Correlating timestamps and technical evidence
- Documenting findings
- Identifying resolution or next actions
- Preparing an incident/RCA report

## Linux Troubleshooting

Unix/Linux commands used in the lab include:

- `pwd`, `ls`, `cd` - directory navigation
- `touch`, `cp`, `mv`, `rm` - file management
- `cat`, `head`, `tail` - log and file inspection
- `grep`, `find` - log searching and file discovery
- Pipes and redirection - command output processing
- `ps`, `top`, `kill` - process investigation
- `df`, `du` - disk-space investigation
- `chmod`, `chown` - permission and ownership investigation

These commands are used to investigate simulated application and
production-support issues rather than as standalone Linux exercises.

## SQL Investigation

SQL Server is used to simulate banking transaction data and perform
production-support data validation.

The investigation includes:

- Checking transaction status and transaction counts
- Identifying failed transactions
- Analyzing failure reasons using error codes
- Identifying accounts with multiple failed transactions
- Reviewing failed transactions in chronological order
- Correlating transaction records with application and database logs
- Using SQL results as supporting evidence during incident investigation

Example investigation areas:

- Failed transaction analysis
- Database timeout investigation
- Transaction status validation
- Error-code analysis
- Account-level failure analysis
- Transaction timeline analysis

## Incident Investigation & RCA

Each simulated incident follows a structured production-support approach:

1. Identify the incident and business impact
2. Check relevant application, database, or batch logs
3. Identify error messages and timestamps
4. Investigate the application or process using Unix/Linux commands
5. Validate transaction or application data using SQL
6. Correlate information from multiple sources
7. Identify the observed cause based on available evidence
8. Document findings and resolution or next actions
9. Prepare an incident/RCA report

The lab follows an evidence-based troubleshooting approach and avoids
assuming a root cause without sufficient technical evidence.

## Project Results & Key Learning

Through this lab, the following production-support capabilities were
practiced:

- Unix/Linux-based application and process investigation
- Application, database, and batch log analysis
- SQL-based transaction investigation and validation
- Correlation of application logs with database and transaction data
- Identification of recurring production issues
- Incident timeline analysis
- Basic disk-space and permission investigation
- Structured incident documentation
- Root Cause Analysis based on available evidence
- Understanding of escalation and next-action requirements

The project demonstrates a practical approach to investigating production
issues using multiple sources of technical information.

