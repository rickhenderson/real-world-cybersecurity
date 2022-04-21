# Real World Cybersecurity
A collection of useful resources for learning real world cybersecurity.

In August 2020, I received my CompTIA Security+ certification after working as a computer instructor for 20 years. I've always had an interest in computer security and hacking. I worked in IT when CodeRed and Nimda hit. I was using snort and reading NTBugTraq in the early days, but it was rarely directly related to my work.

In July 2021 I got hired as a **security research analyst** at [BlackBerry](https://blackberry.com) -- a company well known for their secure foundations. 
(THEY DON'T MAKE PHONES ANYMORE SO STOP ASKING ABOUT YOUR KEY2).

## Things You REALLY Need To Learn

### Mitre ATT&CK Framework
[Mitre ATT&CK Framework](https://attack.mitre.org/)
Seriously. Learn it. Memorize it. Learn how attacks and new malware can map to the ATT&CK techniques. Read up on new malware and think of what categories apply. Learn the killchain model in the sense of knowing that an attack/compromise occurs in different phases, and think of ways to stop an attack at each phase.

### Windbag aka WinDBG
You'll see a lot of references to people using [x64dbg](https://x64dbg.com/#start), but a lot of the older hackers/blueteamers will tell you the power of [WinDBG](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugger-download-tools).

### Assembly Language Programming
Yep. That.
A lot of tutorials show how to do it in Linux but there is a great tutorial on writing ASM in Visual Studio as well.

### Python
I stayed away from Python for a long time but it is a super handy language to write things quickly, and a lot of hacker tools are written in Python.
It's useful because if you learn enough Python, then if you are doing a penetration test and the target has Python installed, you can write your own tools as you go.

### PowerShell

### Windows API Programming
I didn't think I'd need to know so much about the dirty details of Windows programming. I did years of programming in VBA, which is good for analysing macro viruses, so many more malicious exploits and payloads are written in C/C++/C# as binaries that it's good to know what they do and how they work. Since I work in anti-malware, I need to understand how malware works in order to foil it.

#### Tutorials

##### DLL? What's the DeaLL?
You might know of DLLs as Dynamic Linked Libraries, but how much do you really know about them? Windows DLLs share the same file format as executable files. So you'll want to learn about file images, and [the PE file format](https://docs.microsoft.com/en-us/archive/msdn-magazine/2002/february/inside-windows-win32-portable-executable-file-format-in-detail). If you deal with Linux at all, you'll want to [learn about the ELF file format](https://linuxhint.com/understanding_elf_file_format/).

Understanding DLLs is one of the reasons you should learn more about assembly programming.

##### Hooking
Malware and endpoint response and detection (EDR) systems rely on process hooking.
* https://www.cynet.com/attack-techniques-hands-on/api-hooking/ - Nice tutorial with good basics, but not all the required code is presented.
* https://docs.microsoft.com/en-us/windows/win32/winmsg/about-hooks - Whenever possible, learn from the source is what I always say.

### Reading References
* PE File Format
  * https://docs.microsoft.com/en-us/windows/win32/debug/pe-format
* Shellcode
  * <https://www.exploit-db.com/docs/english/13019-shell-code-for-beginners.pdf> - haven't read it yet.
  * <https://vividmachines.com/shellcode/shellcode.html> - By Steve Hanna - VERY accessible, great start. Make sure you use his `arwin.c` tool to find the addresses for your Windows platform version of the API calls (changes with version).
  * <https://doc.lagout.org/security/The%20Shellcoder%E2%80%99s%20Handbook.pdf> - Shellcoder's Handbook - Highly Recommended - Heavy Read (745 pgs!)
  

