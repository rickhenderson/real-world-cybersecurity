# Detection Rules for Suricata

Suricata is an open source network intrusion detection system (NIDS), intrusion prevention system (IPS), and network security monitoring engine.

It can detect malicious activity based on signature-based rules.

Learn more: [Suricata Documentation](https://docs.suricata.io/en/latest/what-is-suricata.html)

## My Rules

I've started creating rules and making them available in [hidden-security.rules](hidden-security.rules) but of course rename the file to whatever you want.

If this is your first time using Suricata, save the file as `local.rules` and follow the Suricata documentation.

### 20250315

In [a post on LinkedIn](https://www.linkedin.com/posts/vaughan-shanks_dprk-bybit-cryptocurrency-activity-7305321370622509056--Eur?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAAFBSi8BurOEzF9owtslqhk_on1p_zUcL7U), Vaughan Shanks wrote about the ByBit hack that cost them $1.5B in crypto currency.
Attributed to a North Korean hacking group known as Lazarus Group, one particular part of the preliminary report by Mandiant caught my eye.

* Between Feb 5-17, 2025, a browser with a User-Agent string containing "distrib#kali.2024" was used to do recon in the AWS environment.

That got me as being VERY easy to detect, but of course not something an organization would likely think to be looking for.

So I installed Suricata for the first time, and wrote my first Suricata rule. Here it is:

```
alert tcp $EXTERNAL_NET any -> $HOME_NET [80, 8000, 8080] (msg: "TCP Possible Kali probe"; flow:established; content: "distrib#kali.2024"; nocase; sid:1000001; rev:1;) 
```

If you notice any flaws or have suggestions on how to improve it, let me know.
