* What mktemp -d Does

mktemp	Command to create a temporary file or folder

\-d	Create a directory (not a file)

/tmp/tmp.2BjSJpRMKA	The full path of the new temporary folder that was created



* What Is /tmp/?

&#x20;   /tmp/ is a system directory used for temporary files.

&#x20;   Files in /tmp/ are automatically deleted when the system restarts.

&#x20;   It's a safe place to do experiments, extract files, or work without cluttering your home folder.



* Copy \& Paste in Kali Terminal

Copy	Ctrl + Shift + C

Paste	Ctrl + Shift + V



* ROT13 is symmetrical — applying the same command again decodes it back to the original. That's why you can use the same command to encode and decode.



* Common Ways to Delete/Clear in Terminal

Delete entire line		Ctrl + U

Delete one word backward	Ctrl + W

Delete one character backward	Backspace

Delete one character forward	Delete or Ctrl + D

Clear the terminal screen	clear or Ctrl + L



* The Easiest \& Best Way: VirtualBox Shared Folders (Set It and Forget It)

This is your go-to method. Once you set it up, the folder always appears in your Kali VM, and it’s incredibly easy to move files back and forth.

&#x20;   What to do in Windows: In the VirtualBox main window, right-click your Kali VM and go to Settings → Shared Folders. Add a new folder from your Windows PC that you want to share. Make sure "Auto-mount" is checked .

&#x20;   What to do in Kali: The shared folder usually appears at /media/sf\_<your\_folder\_name>. You might need to add your user to the vboxsf group to be able to write to it. You can do this by running this command in a Kali terminal:

bash

sudo adduser $USER vboxsf

&#x20;   Log out and back in for the change to take effect. After that, the folder is ready to use . This method is recommended because it's simple and doesn't require any extra network setup.



* File Deletion Commands

rm <filename>		Delete a single file

rm file1 file2 file3	Delete multiple files

rm -i <filename>	Ask for confirmation before deleting (safer)

rm -f <filename>	Force delete (no confirmation, even if protected)

rm -r <directory>	Delete a directory and all its contents (recursive)

rm -rf <directory>	Force delete a directory and everything inside (dangerous, use with caution)



* What About rmdir?

rmdir <directory>	Delete an empty directory only

rmdir only works if the folder is empty. Otherwise you'll get an error.



* ⚠️ Important Warning

&#x20;   rm -rf / = delete everything on your system (never run this).

&#x20;   rm -rf is powerful. Always double‑check the directory name before running it.



* Open terminal on windows vs Linux keyboard shortcuts?

Windows 11 - Windows Key + X, then A (or I)

Kali linux - Ctrl + Alt + T \& ctrl + D (for exiting)

