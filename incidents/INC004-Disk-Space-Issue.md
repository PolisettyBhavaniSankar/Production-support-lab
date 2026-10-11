# INC004 - Disk Space Investigation

## Incident Summary
A simulated disk-space issue was investigated as part of the production-support lab.

## Investigation
Filesystem usage was checked using df -h. The root filesystem was found to be at 74% usage, so the filesystem was not critically full.

Project log usage was then checked using du. A simulated 50 MB application log file was identified as the largest file in the project logs directory.

## Findings
The simulated large log file was identified successfully. The actual Cloud Shell filesystem was not critically full during the investigation.

## Resolution
The simulated test file was removed after verifying that it was created specifically for this lab exercise.

## L1 Support Actions
- Checked filesystem utilization using df -h.
- Checked project log usage using du.
- Identified the large log file.
- Verified the file before cleanup.
- Removed the test file safely.

## Lab Note
The large log file was intentionally created for simulation. No production or system files were deleted.
