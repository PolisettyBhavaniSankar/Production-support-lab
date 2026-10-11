# INC003 - Application Process Down

## Incident Summary
A simulated application process was stopped to reproduce an application-process-down scenario in the production-support lab.

## Impact
The simulated application process was unavailable after the process was stopped.

## Investigation
The process was initially verified using its PID. The process was then stopped using the standard Linux kill command.

The process status was checked again using the PID to confirm that it was no longer running.

## Commands Used
- ps -p <PID>
- kill <PID>

## Findings
The simulated application process was successfully stopped and subsequently confirmed as no longer running.

## Resolution / Next Action
In a real production environment, the application recovery procedure would be followed. This could include checking application logs, validating dependencies, and restarting the application through the approved operational procedure.

## L1 Support Actions
- Verified application process status.
- Identified the process using its PID.
- Confirmed the process stopped.
- Documented the investigation and recovery approach.

## Lab Note
This incident was simulated using a harmless Linux sleep process in Google Cloud Shell. No production application or system process was modified.
