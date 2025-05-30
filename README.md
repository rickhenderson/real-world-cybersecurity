# Real World Cybersecurity
A collection of useful resources for learning real world cybersecurity.

In August 2020, I received my CompTIA Security+ certification after working as a computer instructor for 20 years. I acheived my Masters of Education from Wilfrid Laurier University earlier that year.

I've always had an interest in computer security and hacking. 
* I worked in IT when the [CodeRed](https://www.caida.org/archive/code-red/) and [Nimda](https://en.wikipedia.org/wiki/Nimda) worms hit. I analyzed web logs to find evidence of them scanning the Internet.
* I was using [snort](https://www.snort.org/) and reading NTBugTraq in the early days, but it was rarely directly related to my work.
* My fourth year Computer Ethics paper was titled "A Brief Discussion on Computer Crime and Canadian Law" (1998) where I touched on the [Kevin Mitnick](https://en.wikipedia.org/wiki/Kevin_Mitnick) case... and I almost got him to sign it once!

In July 2021 I got hired as a **security response analyst** at [BlackBerry](https://blackberry.com) -- a company well known for their secure foundations. 
(THEY DON'T MAKE PHONES ANYMORE SO STOP ASKING ABOUT YOUR KEY2).

In February 2025 my position supporting the Cylance EDR, EPP and other products via Product Security was made redundant. The Cylance assets were sold to Arctic Wolf.

For the past 3 years I have worked at BlackBerry in the Product Security department writing detection rules for CylanceOPTICS. My primary job was to write Optics rules for new and emerging threats. 

I have investigated and written detections for Jupyter, BlackBasta loaders, Spyboy Terminator, Emotet, GootLoader, WhisperGate, HermeticWiper and many other malware samples protecting more than 2 million endpoints world-wide.

I have experience with threat research, staying up-to-date on new techniques, analyzing malware and maldocs to create detections, as well as scripting, coding in Python, C#, C/C++, and developing and testing detections.

On a daily basis I was writing Python scripts, reading malware write-ups, de-obfuscating malicious scripts in PowerShell, JavaScript, and Visual Basic. I would store scripts in Gitlab and search Github for malware and detections. 

My work in Product Security included vulnerability management, binary scanning for static analysis, and determining if BlackBerry products were susceptible to reported vulnerabilities. This included a large number of open source libraries as well as BlackBerry proprietary code.

In early 2025 I started a Substack account [to post about security and called it Hidden Security](https://substack.com/@rickhendersonco) until I could find a better name.

## Table Of Contents Kind of Thingy

* [Intelligence](Intelligence/README.md)
* [Malware Analysis](malware-analysis.md)
* [OSINT](OSINT)
* [Detecting Threats](detecting-threats)

## Things You REALLY Need To Learn

### Mitre ATT&CK Framework
[Mitre ATT&CK Framework](https://attack.mitre.org/)
Seriously. Learn it. Memorize it. Learn how attacks and new malware can map to the ATT&CK techniques. Read up on new malware and think of what categories apply. Learn the killchain model in the sense of knowing that an attack/compromise occurs in different phases, and think of ways to stop an attack at each phase.

### Windbag aka WinDBG
You'll see a lot of references to people using [x64dbg](https://x64dbg.com/#start), but a lot of the older hackers/blueteamers will tell you the power of [WinDBG](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugger-download-tools).

I've recently got a copy of [Hacking: The Art of Exploitation](https://www.amazon.com/dp/1593271441/ref=cm_sw_em_r_mt_dp_6JR1759HVF3PE9TKA37Y) and started going through the tutorial on using GDB on Linux. I found it very approachable and much easier to follow than with WinDBG and even IDA. By following through the sections on assembly language, I was finally about to understand EXACTLY what people mean about the stack grows down and heap grows up. Don't worry, you'll get it.

### Assembly Language Programming
Yep. That.
A lot of tutorials show how to do it in Linux but there is a great tutorial on writing ASM in Visual Studio as well.
* [PC Assembly by Paul Carter](https://pacman128.github.io/pcasm/) - Sort of well known starting point for assembly.
  * Recommended starting point by [Josh Stroschein](https://www.youtube.com/watch?v=auOWDaufaes).    

### Python
I stayed away from Python for a long time but it is a super handy language to write things quickly, and a lot of hacker tools are written in Python.
It's useful because if you learn enough Python, then if you are doing a penetration test and the target has Python installed, you can write your own tools as you go.
* [My Python Playground](https://github.com/rickhenderson/portfolio/tree/main/python-playground) - I created this as I was reviewing Python for a job interview. Not a recommended learning resource :).
* [Black Hat Python](https://amzn.to/4mSOQfg) - Python Programming for Hackers and Pentesters **IS** a recommended learning resource if you want security specific Python and already have a coding background.

### PowerShell

### Windows API Programming
I didn't think I'd need to know so much about the dirty details of Windows programming. I did years of programming in VBA, which is good for analysing macro viruses, so many more malicious exploits and payloads are written in C/C++/C# as binaries that it's good to know what they do and how they work. Since I work in anti-malware, I need to understand how malware works in order to foil it.

### Shellcode
It took me a while to really understand shellcode. The name is actually a bit confusing. Even when someone tried to explain that it opens a shell, I still didn't know what it meant! Since I never trust shellcode I didn't make (it's usually Base64 encoded or simply written in Assembly hex) I used msfvenom to generate a block of shellcode that will try to open calc.exe on a target.

Instead of placing the shellcode here, I'll give you the [msfvenom](https://www.offensive-security.com/metasploit-unleashed/msfvenom/) command to use to generate it:

```bash
msfvenom --arch x64 --platform windows -p windows/x64/exec CMD=calc.exe -f python -v popCalc
```
A good learning exercise will be to look at the `msfvenom` Help pages and figure out how this shellcode will work.

### CVSS
The **Common Vulnerability Scoring System** is an industry standard used to rank software vulnerabilities based on how they affect the **CIA triad** - Confidentiality, Integrity, and Availablity. You will hear about the triad a lot.
I use the CVSS almost every day, and it is good to learn how to read a CVSS vector like this:
```
CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:N/I:N/A:H
```

Luckily, there is a [free online course](https://www.first.org/cvss/training) that will explain everything you need to know. It will take sometime to get used to reading CVSS vectors and better still, score a vulnerabiility as it applies to your own system or company. That just takes practice. It is also good to be able to discuss your scoring with someone else with experience with CVSS.

### Malware Analysis
* I have a [Malware Analysis](malware-analysis.md) page.

### Threat Intelligence (TI)
* And you can visit the [Threat Intelligence](threat-intelligence.md) page.

### Threat Detection Engineering
* A detailed section has been created on [detection engineering page](detecting-threats/detection-engineering.md)

### Threat Hunting
* Searching for malicious actors or threats in your current environment.
* In my role as a security response analyst I used SQL to search Databricks across 2M endpoints for indicators that could be used for detection, or check for false positives, and a custom version of EQL in Cylance Console within my own test tenant.

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
  * <https://klaus.hohenpoelz.de/a-simple-yet-complete-shellcode-loader-for-linux-x64-shellcode-part-1.html> - A Linux shellcode loader using techniques similar to Steve Hanna's article above
  

