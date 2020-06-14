# SecurityScripts

Hello fellow earthlings and any entity that may find my little repository.

I'm just a person who found an interest in computer security and testing, and later found a joy in writing scripts to automate tasks. So I picked up a book and decided to learn Python. Then later our of necessity learned to write scripts in Bash and DOS command line. So I am sharing some of my scripts with the Internet in hopes that it may make someone elses job easier.

Most of the scripts I write tend to just be for my own thoughts and needs for tasks that I work on, but that doesn't mean that someone else might not stumble on them and find them interesting or helpful.


I will continue to add to these as I develop different scripts or find better ways for my scripts to function.

Scripts currently in repository:

"HashCopy.bat": This is a simple batch script that when run as administrator on an Active Directory Domain Controller will make a Volume Shadow Copy of the system and from that it will copy the NTDS.dit file and two necessary registry hives (SYSTEM and SAM) to the location that the script was run from.

"NT Hash Generator.py": Uses the modules (hashlib, binascii, and getpass) and user supplied generic username and password to create a NT hash file for testing different password cracking tools. This was designed as a means to use during different meetings/trainings to show people that with weak passwords a password cracker could easily crack the passwords stored on a Windows Computer within a short period of time. It can be used to generate any number of users in a password hash file each with their own corresponding NT password hash.
