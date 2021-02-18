---
title: SolarWinds Hacking Attack and IOC
date: 2021-02-18T18:15:32.994Z
image: /blog/img/solarwinds-blog.png
categories:
  - engineering
authors:
  - Ingrum Jefferson
draft: false
---
SolarWinds was founded in 1999, and its first product-managed networks were for business. SolarWinds is best known for its enterprise monitoring product line, which has 33,000 public and private customers, representing about 10% of SolarWinds' total customers. In December 2020, a hack of SolarWinds was discovered by one of the leading cybersecurity companies, FireEye.

FireEye was conducting a forensic investigation of a breach on its own network, which led them to SolarWinds as the possible culprit. They reviewed 50,000 lines of the SolarWinds Orion code and discovered a backdoor. When traced, the backdoor initiated active connections to command and control servers. It determined that the hackers' attack behavior and pattern were Russian in origin, specifically one of the country's state-sponsored agencies. FireEye informed SolarWinds of the trojanized code, which led to the discovery that several U.S. federal, state, and local agencies and business organizations were also hacked. In total, around 18,000 SolarWinds customers were hacked, about fifty percent of SolarWinds Orion's customers.

Storj doesn't use the SolarWinds Orion product, therefore isn't vulnerable or exposed to this attack. The decentralized architecture of Storj acts as a protection and barrier from a "supply chain attack." This attack depends on compromising the supply chain that leads to breaching customers of the compromised product that allowed the vetted product into their trusted network. Infected payload and trojans are deposited by malware onto endpoints that create back doors to a hacker's command and control server in an effort to steal sensitive data and gives the hacker a footprint of the customer's network to formulate new attack vectors to other endpoints.

Storj's decentralized storage network does not use third-party monitoring agents on its Storage Node endpoints, preventing widespread outages, availability issues caused by supply chain vulnerabilities, and guarding customers' data and privacy against most, if not all hackers and attack vectors, even those that are state-sponsored.

Storj's goal is to increase the awareness of its customers and Storage Node service providers that may be using the SolarWinds Orion product or any other SolarWinds product and decrease any fears or security concerns that they may have when using the Storj decentralized network. This is even more important because the [most recent update by ZDNet](https://www.zdnet.com/article/third-malware-strain-discovered-in-solarwinds-supply-chain-attack) reports that "The Sunspot malware was installed on SolarWinds build server, a type of software used by developers to assemble smaller components into larger software applications." The implication is that other products may be compromised since it was not just the supply chain process that was exploited but also the build process. [](https://www.zdnet.com/article/third-malware-strain-discovered-in-solarwinds-supply-chain-attack/)

Those affected by the SolarWinds vulnerability may want to implement end-to-end encryption (E2EE), which protects sensitive data from third parties conducting espionage and hackers. The sender of the message will use either a symmetric encryption key, which is the same private key used to encrypt and decrypt the data, or an asymmetric key, which is a public/private key pair used to encrypt and decrypt the data. Search google using "E2EE" for further information.

The Russian hackers added malware into the SolarWinds source code and injected its changes into the supply chain. Cybersecurity professionals are very familiar with this type of attack, which is given the name of "Supply Chain Attack." Through these attacks, hackers place malware or backdoors into the release and distribution process, therefore bypassing the platform's security mechanisms and processes. As the product and its release process are trusted by the target organization, the attack becomes an internal attack within the target's organization. The active malware will terminate and prevent itself from executing until the avsvmcloud\[.]com zone file is removed from DNS. When one of the below IPv4 or IPV6 IP addresses are used in the DNS zone file, overriding the avsvmcloud\[.]com domain to prevent detection, the malware will suspend itself, adding anyone of the following in the avsvmcloud\[.]com DNS zone file will prevent the malware from functioning.

* 10.0.0.0/8 
* 172.16.0.0/12 
* 192.168.0.0/16 
* 224.0.0.0/3 
* fc00:: - fe00:: 
* fec0:: - ffc0:: 
* ff00:: - ff00:: 
* 20.140.0.0/15
* 96.31.172.0/24 
* 131.228.12.0/22 
* 144.86.226.0/24

FireEye, SolarWinds, and Microsoft seized the command and control domain avsvmcloud\[.]com and changed the DNS domain to resolve to IP address 20.140.0.1, which is owned by Microsoft; this is done for our protection. Apparently, the Russian hackers were connecting to a fully qualified domain name (FQDN). They expected some organizations to override their domain to a private IP address or cloud IP address. They will then render the malware dormant to prevent detection.

CISA, the lead U.S. agency responsible for Cybersecurity defense, published a directive mandating all federal agencies take the following actions and strongly recommend that state, local, U.S. territories, business organizations, and tribal territories do the same. CISA disclosed additional attack vectors involving SAML and LDAP and all SolarWinds monitored endpoints; they all should be assumed to be compromised. CISA appears to be requesting a zero-trust approach, where SolarWinds Orion is not to be trusted nor any of its monitored endpoints until their security is verified by CISA.

CISA insists all federal and state agencies implement one of the two countermeasures below; I recommend the second countermeasure, and I will explain why later in this post. 

### CISA Recommendations

1. Remove SolarWinds from the network and don't apply the patch until CISA gives the go-ahead. CISA appears to be taking a very conservative zero trust remediation and recovery approach. They don't appear to be using SolarWinds recommendations immediately, and they didn't clear the SolarWinds patch to be applied by any agency until they give clearance; they appear to be waiting for their forensic lab to study the patch and the vulnerability before clearing it for wide use.
2. Conduct a complete forensic analysis on SolarWinds and all monitored endpoints to confirm and show evidence of not being breached and compromised. Also, rebuild the SolarWinds server and install SolarWinds, download, and check the signature first.

I recommend option two because it's less costly and more practical than temporarily shutting down SolarWinds and possibly rebuilding all endpoints, which is my interpretation of CISA's suggestion. In my opinion, if you patched SolarWinds in or after March 2020, then you have the vulnerability; gather evidence of the SolarWinds server and all monitored endpoints to prove that your organization is vulnerable or clean. Please follow these recommendations:

1. Rebuild the SolarWinds's server in an effort to remove all trojans. Keep in mind that no Windows utility or registry can be trusted if you're on the vulnerable version of SolarWinds.
2. Install a fresh copy of SolarWinds' latest release; make certain the signature is downloaded and verified.
3. Your Cybersecurity area should acquire and download the top open source or commercial forensic tools; I'm familiar with Autopsy, Magnet RAM detector, and even Wireshark can be used for forensic purposes. [https://h11dfs.com/the-best-open-source-digital-forensic-tools/](https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fh11dfs.com%2Fthe-best-open-source-digital-forensic-tools%2F&data=04%7C01%7C%7C43fb7a9f87574caf8b6008d8a5fd67ef%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637441855068316374%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=1nuPitvRcqKH2WrjLJNYFAxOCx16a%2ByZ%2F8W7FQHiToc%3D&reserved=0) or [https://resources.infosecinstitute.com/topic/7-best-computer-forensics-tools/](https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fresources.infosecinstitute.com%2Ftopic%2F7-best-computer-forensics-tools%2F&data=04%7C01%7C%7C43fb7a9f87574caf8b6008d8a5fd67ef%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637441855068326328%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=9GCrE3mO2mSxgJt%2BdvWfOkySh4jw%2BiBuOZ0CL0JEtOc%3D&reserved=0)
4. The forensic tool will provide evidence of any compromises or that the system is clean.
5. The forensic tools must be executed before a reboot of SolarWinds or any of the monitored endpoints.
6. The Russian hackers are smart, patient, trained, and skilled and have programmed the backdoor not to persist their connections; therefore, the backdoor becomes difficult to detect, and normal detection measures may not work.
7. Use a Firewall and SIEM to determine if there are any suspicious active or intermittent connections.
8. Keep in mind the external endpoints being used by the Russian hackers appeared to be connecting to valid cloud providers and CDNs; the hackers used this to mask the true origin of the hack so that investigators are misled. Microsoft has built and maintained a list of all victims exploited by SolarWinds' Russian hack, using the Microsoft DNS sinkhole service built after acquiring the avsvmcloud\[.]com domain, to redirect DNS queries; they built the command and control connection sinkhole that Microsoft also operates and supports. You must confirm your organization isn't on that list, so please check the Microsoft list.
9. The hackers depend on human instinct to quickly move on, not believe they can be hacked, or take the time to conduct due diligence, be indifferent, not spend the money needed, and procrastinate.
10. Depending on the infrastructure size, it will take your cybersecurity area several months to scan all monitored endpoints and SolarWinds Orion to determine compromise.
11. Finally, the results must be evidence-based, all forensic results and countermeasures must be documented and put in a GRC tool, spreadsheet, or a service desk application as documented evidence.
12. You must meet with your incident response team and follow your incident response plan.

Please feel free to contact Storj with any questions or concerns at support@storj.io.