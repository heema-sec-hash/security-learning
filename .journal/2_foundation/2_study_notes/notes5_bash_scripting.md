* nano command is a simple text editor. It provides an easy-to-use terminal editor.
The tool shows shortcuts at bottom. Beginner-friendly alternative to vi/vim.
- -B Create backup files.



* If Statements
-eq	Equal to
-ne	Not equal
-gt	Greater than
-lt	Less than
-ge	Greater than or equal
-le	Less than or equal



* fi (if spelled backward) command is a shell keyword that closes an if conditional block. It's part of the shell's control flow syntax, marking where conditional execution ends.
The if/then/fi structure evaluates conditions and executes code blocks based on exit statuses. Conditions can use test commands, \[\[ ]], or any command's exit status.
fi must appear for every if, matching them like parentheses.



* When writing scripts in Bash, it is best practice to quote your variables to prevent errors if the variable happens to be empty or contains spaces



* A 'for' loop allows you to execute a specific block of code repeatedly for a defined set of items. It is essential for automating repetitive tasks. Says "do this for each item in a list"



* 'while' loop says "keep doing this as long as a condition is true.



* Comparison: for vs while
for loop: Use when you know exactly how many times you want to repeat something (like "process these 5 files").
while loop: Use when you want to repeat something until a specific state changes (like "keep checking the server until it responds" or "keep reading lines until you reach the end of the file").



* command ping -c COUNT
Stop after sending COUNT packets



* When using curl or other tools to scan a network, you don't want to read thousands of lines of output manually. You want the script to "know" if the scan worked.
- So use this with curl to see if a web page exists:
if \[ $? -eq 0 ]; then , echo "Found it!" , else , echo "Nothing here."



* linux saves scripts without execution permission
- add permission: chmod +x script\_name.sh
- In professional environments, will almost always use chmod +x so I can
run my tools simply by typing ./toolname
- can use 'bash script\_name.sh' to read (not run) inexecutable files
- also, bash -x script\_name.sh  to print commands before execution (debug mode)



* To Safely Check a Script (Before Running)
- Read the file: Use cat, less, or an editor.
- Look for suspicious commands: curl | bash , base64 , eval , rm -rf , nc
- use VM as a sandbox checking machine



* This is how professionals script:
1. Start with the basics
2. Save and run it using bash command
3. Add the next section and the "Pause Button": exit
4. After confirming it works – change exit to # exit



* uname command prints system information about the machine and operating system. It's commonly used in scripts to detect the platform and adjust behavior accordingly.
- The most common uses are uname -a for all information and uname -m to determine the system architecture (useful for downloading correct binaries).
- -r, --kernel-release/version



* A kernel is the core program at the center of a computer's operating system. It acts as a bridge between the physical hardware and the software.



* free command displays the total amount of free and used physical and swap memory in the system, as well as the buffers and caches used by the kernel. The information is gathered from /proc/meminfo.
- -h, --human: Display in human-readable format with units.
- -b (bytes) , -k (kilobytes) , -m (megabytes) , -g (gigabytes)



* lsb\_release displays Linux Standard Base (LSB) and distribution-specific information about the installed Linux distribution, including distributor ID, description, release number, and codename.
- -d, --description: Print distribution description.



* cut removes sections from each line of files. It extracts columns by character position, byte position, or field delimiter, making it useful for processing structured text data.
- The command is commonly used in shell scripts for parsing columnar data.



* df (disk free) displays the amount of disk space available on filesystems. By default, it shows all mounted filesystems with their total size, used space, available space, and usage percentage.
- -h, --human-readable:Print sizes in human-readable format (K, M, G).



* In Linux, "inet" is the label for IPv4 addresses
- adding space after 'inet' is important, it ensures you don't accidentally match lines that might contain "inet6" (IPv6 addresses)



* ps reports a snapshot of currently running processes on the system. It displays information such as process ID, user, CPU and memory usage, command name, and runtime for each process, providing a point-in-time view of system activity.
* The command accepts options in two distinct styles: BSD syntax (without dashes, e.g., aux) and POSIX syntax (with dashes, e.g., -ef). Both produce similar output but differ in column defaults and filtering behavior. The -o option allows fully custom output formats, selecting specific fields like pid, ppid, command, and resource usage.
* \- Common usage patterns include ps aux to list all processes with detailed info, ps -ef --forest to show the process hierarchy as a tree, and ps -p to inspect a specific process by PID.
* \-a all users
-u display the user who owns the process
-x show processes not associated with a terminal
--sort KEY: Sort output (e.g., --sort=-%mem).



* cut removes sections from each line of files. It extracts columns by character position, byte position, or field delimiter, making it useful for processing structured text data.
* The command is commonly used in shell scripts for parsing columnar data.
* \-d, --delimiter: Field delimiter (default: TAB)



* sed (stream editor) is a powerful text processing tool that performs basic transformations on input streams (files or piped data). It reads input line by line, applies specified editing commands, and writes to standard output.
* Common operations include search and replace (s///), deletion (d), insertion (i), and printing (p). sed uses regular expressions for pattern matching and supports both basic and extended regex syntax. Address ranges (line numbers or patterns) can target specific lines.



* can add "sed 's/^\[ \\t]\*//'" to trim any leading whitespace (extra space or a tab) if you find the text looks "off"



* The || (OR) Operator: This is a defensive programming technique. It tells Bash: "If the command on the left fails (returns a non-zero exit status), execute the command on the right." This prevents your script from looking broken if a tool is missing or if the data isn't found.



* Linux vs. Windows
Privileges (Sudo vs. Admin): In Linux, sudo is required for almost all system-level commands. In Windows, you don't use sudo. However, if you are running the command in a restricted environment, you must "Run as Administrator" for the command to work.
* Syntax: Linux uses a hyphen (-) for flags, while Windows traditionally uses a forward slash (/).
* The "Force" Factor: If you have apps open that might prevent a shutdown (like an unsaved document), you can add the /f flag to force them to close: shutdown /s /f /t 0





