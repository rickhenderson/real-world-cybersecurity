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
##### Hooking
Malware and endpoint response and detection (EDR) systems rely on process hooking.
* https://www.cynet.com/attack-techniques-hands-on/api-hooking/


