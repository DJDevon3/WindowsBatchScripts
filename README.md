# Windows batch scripts for creating backups.

1. WinSCP Batch script is for manually backing up an Edgerouter config folder via ethernet using the Edgerouters built in SFTP/SCP server. Requires WinSCP to be installed.

2. Robocopy_Mirror_HDD is a manual mirror drive backup script using Windows command line. Creates a mirror of HDD D:/ to HDD E:/ When combined with task scheduler it can mirror a drive. Good for situations where you forgot to setup RAID but still want a mirrored drive.

3. Mirroring_Script_Log is a mirroring script that copies the contents of a specific folder from one HDD to another and provides a log file. Uses Windows command line. Robocopy is built into Windows.
