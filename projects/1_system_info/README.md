# System Information Collector

## Purpose
A Bash script that collects and displays key system information for system administration and security investigations.

## Features
- Hostname, user, date/time
- OS version and kernel
- CPU and memory
- Disk usage
- Network interfaces
- Top 5 processes

## Requirements
- Linux system (Kali/Ubuntu)
- Bash shell
- `lsb_release`, `free`, `df`, `ip`, `ps` (usually preinstalled)

## Skills Demonstrated
• Bash scripting
• Linux system commands
• Automation

## Example Output
=================================================
        SYSTEM INFORMATION REPORT
=================================================
Hostname: kali
=================================================
Current Use: kali
=================================================
Date & Time: Mon Jul  6 01:00:24 PM EDT 2026
=================================================
OS Version: Kali GNU/Linux Rolling
=================================================
Kernel: 6.18.12+kali-amd64
=================================================
CPU: 13th Gen Intel(R) Core(TM) i5-13400
=================================================
Memory:
               total        used        free      shared  buff/cache   available
Mem:           1.9Gi       788Mi       474Mi        19Mi       870Mi       1.2Gi
Swap:          953Mi          0B       953Mi
=================================================
Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
udev            883M     0  883M   0% /dev
tmpfs           198M  972K  197M   1% /run
/dev/sda1        79G   16G   59G  22% /
tmpfs           986M  4.0K  986M   1% /dev/shm
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
tmpfs           986M  336K  986M   1% /tmp
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           198M  112K  198M   1% /run/user/1000
=================================================
Network:
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic noprefixroute eth0
=================================================
Top 5 Processes by CPU:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         663  1.2  7.5 508892 153368 tty7    Ssl+ 07:41   3:55 /usr/lib/xorg/Xorg :0 -seat seat0 -auth /var/run/lightdm/root/:0 -nolisten tcp vt7 -novtswitch
kali      171533  0.3  0.9 372868 18532 ?        Sl   12:59   0:00 /usr/libexec/glycin-loaders/2+/glycin-svg --dbus-fd 25
root         604  0.2  0.1 352936  2804 ?        Sl   07:41   0:42 /usr/bin/VBoxDRMClient
kali       80881  0.1  3.3 661668 67876 ?        Sl   10:05   0:18 /usr/bin/qterminal
kali        1127  0.1  6.9 1119348 139876 ?      Sl   07:41   0:28 xfwm4
===================================
        REPORT COMPLETE
===================================

## How to Run
```bash
chmod +x system_info.sh
./system_info.sh
./system_info.sh > report.txt (redirects output into a file instead of printing to the screen)
```