# Why Adopt SIGMA

* Common, agnostic language
* Avoid vendor login
* Support multiple SIEM

Info from: SOC Prime - see https://socprime.com/blog/sigma-rules-the-beginners-guide/

Sharing the SIGMA rule allows it to be ingested and converted to the required query language.

As of August 2022 - No support for Cylance

SIGMA are YAML based rules. SOC Prime has a large public repository and covers 

## Most Important
The rest are just meta-data.

### logsource

### detection

## Resources

* Security Talks with SOC Prime: All About SIGMA
  * By Adam Swan of SOC Prime - Youtube and SOC Prime
* <a href="https://www.nextron-systems.com/2018/02/10/write-sigma-rules/">How To Write SIGMA Rules</a> - By Florian Roth
* <a href="https://patzke.org/a-guide-to-generic-log-sources-in-sigma.html">A Guide to Generic Log Sources in SIGMA</a> - Thomas Patzke

* 90% of queries are matching - Does field A contain Z? Starts with, ends with, etc.
* Also matching and correlation - Does Field A contain value Y more than twice over 1 minute - only supported by some vendors.

```YAML
detection:
  selection:
    fieldA|contains: 'x'
  banana:
    fieldB|endswith: 'y'
  filter:
    fieldsC|startswith: 'z'
  condition:
    (selection OR banana) AND NOT filter
 ```
 
    
