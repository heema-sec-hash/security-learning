# Linux Cheat Sheet – Bandit Levels 0–5

## Remote Access
- ssh
- exit

## Navigation
- pwd
- ls
- ls -la
- cd
- cd ..
- cd \~

## Reading Files
- cat
- cat ./-filename
- cat -- "--filename--"
- cat "file with spaces"
- cat file\\ with\\ spaces
- cat < "--filename"

## File Identification
- file

## File Creation
- touch
- echo "text" > filename

## Directories
- mkdir

## Clearing and Exiting
- clear
- exit
- bash

# Linux Cheat Sheet – Bandit Levels 6–10

## File Searching
- find
- find . -type f -size 1033c ! -executable
- find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

## Text Searching
- grep
- grep millionth data.txt
- strings data.txt | grep "="

## Sorting and Unique
- sort
- uniq -u
- sort data.txt | uniq -u

## Pipes and Redirection
- |             # pipe (send output to next command)
- 2>/dev/null   # hide error messages

# Linux Cheat Sheet – Bandit Levels 11–15

## Decoding
- base64 -d
- cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

## Hexdump
- xxd -r

## Decompression
- gzip -d
- bzip2 -d
- tar -xf

## File Operations
- cp
- chmod 600
- ssh -i

## Network
- nc
- echo "text" | nc localhost 30000

## Temporary Directory
- mktemp -d