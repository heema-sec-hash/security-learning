Kali Linux on VM

\----------------

* A virtual machine (VM) is a fake computer that runs inside your real computer. It uses your real computer's hardware (CPU, RAM, disk) to pretend it's a separate machine.
* VirtualBox creates a "pretend" computer with its own virtual CPU, RAM, hard drive, and network card.
* The VM can't see your real Windows files unless you allow it. It's like a sandbox.
* VM is A "container" inside Your actual PC
* Kali Linux running inside the container in your Windows 11
* VirtualBox "fakes" hardware for Kali to use our of your own hardware



Is it "pure play"? Yes and no. It's a real, functioning Linux system, but it's temporary and isolated.



Is it permanent? If you save the VM state or take snapshots, yes. If you delete it, everything inside is gone.



Why use it? Safe practice. You can break Kali, hack it, test malware – and it won't affect your real Windows.



For a single user? Yes. It's just your machine. No one else uses it.



What does GUI stand for? Graphical User Interface (pronounced "gooey").



Why GUIs Matter? Before GUIs were introduced in the 1970s and 80s, computers relied on Command-Line Interfaces (CLIs), which required users to memorize and type out exact code instructions to get anything done. GUIs revolutionized computing by making it accessible, intuitive, and highly visual.



P.s. I was playing some ambient music in the background when first accessed Kali Linux, saw the task manager for the first time on the top right, thought it was working as a music equalizer lol

\------------------------------------------------------------------------------

Bandit 0-5

\----------

\## Reflection Questions

1. What does ls do? file inspection
2. Difference between ls and ls -la? ls inspects a file generally, while ls -la provides a detailed inspection of a file containments.
3. Why use ./filename? look in the current directory for a file called "filename", if filename starts with a dash, to be explicit that you mean a file in this folder, not a system command or built-in.
4. What does cat do? reading files
5. What does ssh do? connect to a remote Linux server securely.

\------------------------------------------------------------------------------

Bandit 6-10

\-----------

\## Reflection Questions

1\. What is the difference between find and grep?

find = search for files. grep = search for text inside files.

2\. What does the . mean in this command? find . -type f

. means current directory.

3\. What does the pipe | do?

Sends output from one command to be used as input for another.

4\. Why did we use sort before uniq -u?

uniq -u only works on sorted input, so sort first.

5\. What does strings do?

Extracts human-readable text from binary files.

6\. What does 2>/dev/null accomplish?

Hides error messages for cleaner output, you use it to see the answer without clutter.

7\. What is the difference between encoding and encryption?

Encoding = reversible without a key (e.g., base64).

Encryption = reversible only with a key.

8\. Which command from today do you think will be most useful later in cybersecurity, and why?

grep – you will use it constantly for logs, configs, and source code in security work.

