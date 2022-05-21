# Daily Duites
*aka What I did today*

An intern student recently asked me how they can learn about cybersecurity, and during our conversation I realized it can be difficult to get good information unless you focus on what you want to learn.

So I'm going to use this space to list things that I've had to do as a Security Response Analyst I working on a Product Security (PSIRT) team.
Some things are directly related to my duties, and some are things that I do to try and learn something that will likely come up in future, because I've dealt with them at some point.

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
