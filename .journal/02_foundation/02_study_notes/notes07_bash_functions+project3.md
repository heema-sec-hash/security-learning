* Functions prevent copy-paste. If you write the same command 3 times, you're doing it wrong. One function, call it anywhere. OSCP scripts demand this.



* \&> /dev/null is a "silence" command.
* \&>: Redirects both standard output (normal results) and standard error (error messages).
* /dev/null: A special "black hole" file in Linux that instantly discards any data sent to it.
* A script should be "quiet" by default.



* date +%Y%m%d\_%H%M%S: Generates a string like 20260717\_160150 (YearMonthDay\_HourMinuteSecond).



* \[ -z "$URL\_FILE" ]: Checks if the variable $URL\_FILE is empty.



* exit 1: Stops the script immediately with an "error" status code, preventing it from trying to run without the required input.



* \[ ! -f "$URL\_FILE" ]: This checks if the file does not exist (!) and is not a regular file (-f).



* \- Use colons/spaces inside the file (for text).
* Use underscores in the filename (for technical compatibility).



* 1\. date +%Y%m%d\_%H%M%S # machine readable – a file argument used once on file check (the very moment the script starts).
2. date "+%Y-%m-%d %H:%M:%S" # human readable – a result argument used for everytime function is called.



* \- timedatectl #show time\&date info
* sudo timedatectl set-timezone Asia/Amman



* history #Type this in your terminal to see a numbered list of your past commands of all time.



* history | tail -n 20: This shows only the last 20 commands you ran. You can change 20 to any number you like.



* cat \~/.bash\_history #View History File (Persistent list)



* !! and hit enter. It will re-run the last command exactly as it was.



* type man \[command] to check command manual



* > redirects with overwriting (creates the file if it doesn't exist, or completely wipes/overwrites the existing content if it does)



* >> redirects without overwriting (appends to the end of a file)



* By echoing an empty string "" (or just an empty line) into the file, you are essentially "touching" or resetting the file.



* Use plain $(date) when you just want a quick, readable message to show on your screen (like in your "Starting" message).



* Use formatted $(date "+...") when you need your logs to be standardized, sortable, and machine-readable.



* while read -r #The -r flag prevents the backslash character from being interpreted as an escape character (which is safer).



* \[ -z "$url" ]: This checks if the line is empty (zero length). If your text file has empty lines, you don't want the curl command to try and connect to "nothing."



* "$url" =\~ ^#: This is a Regular Expression check.
* ^# means "starts with a hash symbol."
* This allows you to add comments to your list file (e.g., # Checking critical servers) without the script trying to visit that line as a URL.



* The if-elif-else Chain acts like a translator. It maps raw, technical numbers (like 404) to meaningful labels (like "Not Found").



* xargs: By default, piping a string to xargs trims all leading and trailing whitespace (spaces, tabs, newlines) and compresses multiple spaces into one. It is a very common, "idiomatic" Linux trick for cleaning up user-provided input.

