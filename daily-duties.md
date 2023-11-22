# Daily Duites
*aka What I did today*

An intern student recently asked me how they can learn about cybersecurity, and during our conversation I realized it can be difficult to get good information unless you focus on what you want to learn.

So I'm going to use this space to list things that I've had to do as a Security Response Analyst I working on a Product Security (PSIRT) team.
Some things are directly related to my duties, and some are things that I do to try and learn something that will likely come up in future, because I've dealt with them at some point.

## November 2023
* Watched this amazing video on side-channel attacks to understand CVE-2023-5981: <https://www.youtube.com/watch?v=D1DNz5sNDgE> to determine if our product was vulnerable to it.
* Investigated the results of a pentest and tried to duplicate results using an LSASS dump via Mimikatz and StaticSyscallsDump. Need to test a website for user access vulnerabilities.

## June 2022
* Finding it hard to keep up hear unless I write something immediately :)
* Networked with corporate cybersecurity leaders, including the VP.
* Reading threat analysis from [Palo Alto's Unit42](https://unit42.paloaltonetworks.com/) - they're very good.
* Re-evaluated an older advisory. The assessment was written by someone with WAY more knowledge than me (former long-term Microsoft employee) but I was able to understand and properly describe a Time of Check Time of Use (TOCTOU) scenario. Back in Nov of last year I didn't really understand the vulnerability.
* Helped someone from a completely different product team deal with something involving our product.
* Analyzed the [Follina vulnerability](https://www.huntress.com/blog/microsoft-office-remote-code-execution-follina-msdt-bug) and developed a proof of concept (POC). Then found out it was a wasted effort... but I learned a lot so not completely a waste.
* Investigated vulnerabilites in MariaDB to see if our products are effected.
* Realized that some body else in the organization would know more about the product vulnerabilities than I - but then dove in to learn about threat assessment and threat modeling.
* Learned about CI/CD pipelines in GitLab: <https://youtu.be/mnYbOrj-hLY>
* Investigate code involved with Chromium libcef.dll.
* Develop PoC of a malicious PDF file - found great workshop by Didier Stevens: <https://www.youtube.com/playlist?list=PLa-ohdLO29_Y2FeT24w-c9nA_AH84MIpp>.
* Import libraries into a C# project using NuGet: https://docs.microsoft.com/en-us/nuget/consume-packages/install-use-packages-visual-studio, but also there is just the Package Management console for commandline action.
* Inject a DLL into a running process to see if it can be blocked. Used ReflectiveDLLInjection: https://github.com/stephenfewer/ReflectiveDLLInjection (Does Adobe Reader really stop AV products from scanning it?)
* Getting my C# code to work with enterprise level C# code that an entire team wrote. Or more correctly, trying to build an app using an existing framework.
* Clone a Github repo into GitLab, but also need to figure out how to get an existing local repo into GitLab.
* Try to learn how Mac and Linux shared libraries work to help determine software vulnerabilities.
* Work with SQLDBBrowser to work with sqllite databases.
* Investigated Brute Ratel payloads as the go undetected by most of the industry. https://unit42.paloaltonetworks.com/brute-ratel-c4-tool/

## May 2022
* Write Yara rules for livehunting on VirusTotal to look for samples of `SilentBreak`. At this point in time, [researchers at Kaspersky released a number of indicators of compromise](https://securelist.com/a-new-secret-stash-for-fileless-malware/106393/) (IoCs) including MD5 hashes, ip addresses, and URLS indentified as being used in a campaign called `SilentBreak`. However, there seem to be no samples released by the researchers, or found elsewhere.
* Installed [Postgresql](https://www.postgresql.org/) on Ubuntu/[REMNUX](https://remnux.org/) to try and get a copy of [BinNavi](https://github.com/google/binnavi) running, but I don't know enough about Postgresql, and a few of the tutorials I found don't help in exactly what I need. Surprisingly, the unsupported product (now owned by Google) propery compiled from source code. I just need to get the database set up.
* Wrote some Python code to analyze PE headers. A great tool already exists in [PECheck](https://blog.didierstevens.com/2020/03/15/pecheck-py-version-0-7-10/) by Didier Stevens, but I like to write my own to get something exactly as I need it, and learn about PE files along the way. Check out [Didier Stevens](https://blog.didierstevens.com/) for his work on analyzing malicious documents (maldocs). 
  * He also seems to have a mentoring wiki on reverse engineering Windows malware: <https://scratchpad.fandom.com/wiki/Reverse_Engineering_Mentoring>
* Learned to use `gdb` by reading part of Hacking: The Art of Exploitation and that made it a lot easier to debug a program than using `Windbg` or even IDA.
* Wrote C++ code trying to gain information about the local computer using Windows API function calls. Very difficult, even when using Visual Studio. I have an installation of DevC++ which I can get into a lot quicker. I remember it from university.
* I often try to write code that simulates malware that we don't have samples for. Examples of good write ups are [SilentBreak](https://securelist.com/a-new-secret-stash-for-fileless-malware/106393/) and [Jupyter Info Stealer](https://blog.morphisec.com/jupyter-infostealer-backdoor-introduction) (you'll have to register for the detailed PDF report. I try C#, C++, C, and Python. And assembly. Some more successful than others.

## Older
* Look into WSL and see how malware can cross from WSL into Windows, as discovered by [Black Lotus Labs](https://blog.lumen.com/windows-subsystem-for-linux-wsl-threats/)
* Learn about Excel4 macro-based malware. Tip: Use OpenOffice or LibreOffice to investigate Excel or Word malware. If you do so from a Linux machine or VM you can't get infected, but even using LibreOffice on Windows is safe because it won't AutoOpen or autorun macros, and the object model is different, so malware won't run. Just be careful.
* Learn and simulate Excel/Word VBA macro-based malware (maldocs).
* Use [Metasploit](https://www.metasploit.com/) (specifically, [msfvenom](https://www.offensive-security.com/metasploit-unleashed/msfvenom/)) to generate basic shellcode to test with that will run calc.exe on the target.
  * From REMNUX--or any distro--you can install Metasploit aka the Metasploit Framework, and use msfvenom on it's own.
