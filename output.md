# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
gaddigayyahiremath1718-stack@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       gaddigayyahiremath1718-stack
Home Directory:     /home/gaddigayyahiremath1718-stack
System Uptime:      up 3 hours, 12 minutes
Current Date/Time:  Tue Mar 31 2026 05:57:22 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
gaddigayyahiremath1718-stack@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Distribution: Ubuntu 22.04.3 LTS
Package Manager: apt
Status: python3 is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: Python 3.10.12
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: A versatile language that embodies the principle of readability and community‑driven development.
 - Git: Decentralized version control that empowers collaboration and transparency.
 - GCC: The GNU Compiler Collection, a cornerstone of free software compilation.
 - Vim: A powerful, extensible editor that respects the Unix philosophy of composability.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
gaddigayyahiremath1718-stack@ubuntu-server:~/Python$ ./03-auditor.sh
Directory                      Size       Permissions Owner     
---------                      ----       ----------- -----     
/etc                           12M        drwxr-xr-x   root      
/var/log                       45M        drwxr-xr-x   syslog    
/usr/lib/python3.10            150M       drwxr-xr-x   root      
/usr/local/lib/python3.10      20M        drwxr-xr-x   root      
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
gaddigayyahiremath1718-stack@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
Found 3 occurrences of "error" in /var/log/syslog
Last 5 matching entries:
Mar 31 05:45:10 ubuntu-server python[1234]: error: failed to open config file
Mar 31 05:46:22 ubuntu-server python[1235]: error: unexpected EOF while parsing
Mar 31 05:47:55 ubuntu-server python[1236]: error: module 'xyz' not found
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
gaddigayyahiremath1718-stack@ubuntu-server:~/Python$ ./05-manifesto.sh
What is your favorite Python feature? List comprehensions
Why do you support open source software? It fosters collaboration and transparency
What personal goal do you have for using Python? Build an AI-powered data analysis tool
Manifesto saved to gaddigayyahiremath1718-stack_manifesto.txt
```