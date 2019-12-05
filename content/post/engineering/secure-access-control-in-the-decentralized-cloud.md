---
title: Secure access control in the decentralized cloud
date: 2019-12-04T20:51:40.120Z
image: /blog/img/decentralized-iam.png
categories:
  - engineering
authors:
  - Kevin Leffew
draft: false
---
When the tech industry began the transition to cloud-based resource provisioning, the attack/security vectors in which DevOps and CISOs focus on to protect their resources, shifted along with it. 

Suddenly, protecting users’ data required a fundamentally new approach to containing resources. Rather than simply “defending the perimeter” (through ownership of network infrastructure, firewalls, NICs etc.) the model shifted to an identity-based approach to control access to systems and resources.

This practice has become known as Identity and Access Management (IAM), and defines the way users authenticate, access data, and authorize operations in a public cloud environment.

When it comes to authorization and authentication on the web, the standard public cloud approach is through [Access Control Lists](https://en.wikipedia.org/wiki/Access-control_list) (ACLs). However, the [capability-based](https://en.wikipedia.org/wiki/Capability-based_security) approach leveraged by decentralized networks is indisputably more secure, and I will explain why in this blog post.

#### Core Problems with Public Cloud’s ACL model

The ACL model, sometimes referred to as the [Ambient Authority Model](https://wikivisually.com/wiki/Ambient_authority), is based on user identity privileges (for example, through Role-based Access Control). 

The ACL keeps a list of which users are allowed to execute which commands for on an object, or file. This list of abilities is kept logically separate from the actual identity of the users.

<img src="/blog/img/centralized-acl.png" width="40%"/>

The appeal of ACLs partially arises from a notion of a singular “SuperAdmin” being able to list and fully control every user's account and privileges. 

This centralized approach to control creates a massive honeypot for hackers, because when the SuperAdmin loses control, the entire system falls apart.

Because the ACL model defines access through the user-agent identity (or abstractions like roles, groups, service accounts etc.), each resource acquires its access control settings as the result of a superuser administrator making deliberate access configuration choices for it.

This is a major weakness of the ACL approach, especially within todays’ massively parallel and distributed systems, where resources are accessed across disparate operating systems and multiple data stores.

Essentially, the ACL model associates users to files, and controls permissions around them.

The Access Control List Approach fails for two reasons:

**Failure 1: ambient authority trap**

An authority is "ambient" if it exists in a broadly visible environment where any subject can request it by name. 

For example, in Amazon S3, when a request is received against a resource, Amazon has to check the corresponding ACL (an ambient authority) to verify that the requester has the necessary access permissions. 

<img src="/blog/img/access-control-list.png" width="50%"/>

This is an unnecessary extra hop in the authentication process that leads to ambient authority. In this scenario the designation of the authority (the user) is separated from the authority itself (the access control list), violating the [Principle of Least Authority (POLA)](https://www.us-cert.gov/bsi/articles/knowledge/principles/least-privilege).

Furthermore, IAM systems based on the ACL model fall into the [ambient authority trap](http://zesty.ca/zest/out/msg00139.html) – where user roles are granted an array of permissions in such a way that the user does not explicitly know which permissions are being exercised.

In this design flaw, inherent to many public cloud platforms, user-agents are unable to independently determine the source, or the number/types of permission that they have, because the list is held separately from them on the ACL. Their only option is through trial and error, making a series of de-escalated privilege calls until they succeed.

To invoke an analogy, this is like using a personal, unmarked key to open a series of infinite doors. You don’t know which door will open until you try it. Very inefficient!

As a result, If agents cannot identify their own privilege set, they cannot safely delegate restricted authority on another party’s behalf. It would be risky for someone to lend a key to a neighbor, not knowing which of my doors it might open.

In the world of operating systems and mission-critical distributed systems, avoiding ambient authority privilege escalation is crucial, especially when running untrusted code. 

Every application today is launched with grossly excessive authority to the users operating systems. This is why many systems implement FreeBSD jails like [Capsicum](https://wiki.freebsd.org/Capsicum) and Linux Docker containers to sandbox software. 

Google is even working on a new capability-based operating system called [Fuchsia](https://en.wikipedia.org/wiki/Google_Fuchsia) to supercede the Linux Android kernel.

**Failure 2: confused deputy problem**

<img src="/blog/img/confused-deputy-probblem.png" width="100%"/>

A deputy is a program that manages authorities coming from multiple sources. A confused deputy is a delegate that has been manipulated into wielding its authority inappropriately.

Examples of the Confused Deputy Problem can be found across the web. These include injection attacks, cross-site request forgery, cross site scripting attacks, click-jacking etc. These attacks take advantage of ambient authority to use the victim’s existing program logic to nefarious ends in web applications. 

In order to avoid the Confused Deputy Problem, a subject must be careful to maintain the association between each authority and its intended purpose. This is wholly avoided by the capability-based model described below.

#### Capability-based security is better

From a security-design standpoint, the capability model introduces a fundamentally better approach to identity and access management than Public Cloud’s ACL framework.

By tying access to keys, rather than a centralized control system, capability-based models push security to the edge, decentralizing the large ACL attack vector and creating a more secure IAM system.
<img src="/blog/img/capability-based-security.png" width="100%"/>

The capability-based model solves both the ambient authority trap and the confused deputy problem by design.

**What is a capability?**

Often referred to as simply a ‘key,’ a capability is the single thing that both designates a resource and authorizes some kind of access to it. The capability is an unforgeable [token](https://en.wikipedia.org/wiki/Access_token) of authority.

Those coming from the Blockchain world will be very familiar with the capability-based security model, as it is the model implemented in Bitcoin where “your key is your money” and in Ethereum where “your key is gas for EVM computations”.

This gives the client-user full insight into their privilege set, illustrating the core tenet of the Capability Mindset: “[don’t separate designation from authority.](https://crypto.stanford.edu/cs155old/cs155-spring09/papers/ConfusedDeputy.html)”.

Similar to how in the Blockchain world, “your keys are your money,” with Tardigrade, your keys are your data, and macaroons add additional capabilities that allow the owners of data to caveat it, or granularly delegate access for sharing, programatically.

Key-based ownership of object data will enable users to intuitively control their data as a first principle, and then delegate it as they see fit. The decentralized cloud eliminates the increasingly apparent risk of data loss/extortion due to holding data on one single provider (like Amazon, Google, or Microsoft). 

Storj, with its Tardigrade service, presents a better model where object data is encrypted, erasure-coded, and spread across thousands of nodes stratified by reputation whereby any and every computer can be the cloud.

#### Macaroons are the key innovation

Macaroons enable granular, programmatic authorization for resources in a decentralized way.

The construction of macaroons was [first formulated by a group of Google engineers](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41892.pdf) in 2014. These chained, nested constructions are a great example of the capability-based security model and are [deeply integrated into the V3 Storj Network](https://storj.io/blog/2019/05/flexible-file-sharing-with-macaroons/).

Macaroons are excellent for use in distributed systems, because they allow applications to enforce complex authorization constraints without requiring server-side modification, making it easy to coordinate between decentralized resource servers and the applications that use them.

Their name, “MAC-aroons”, derives from the [HMAC process](https://en.wikipedia.org/wiki/HMAC) (hash-based message authentication code) by which they are constructed, while also implicitly alluding to a claim of superiority over the[HTTP cookie](https://en.wikipedia.org/wiki/HTTP_cookie). 

In practice, HMACs are used to simultaneously verify both the [data integrity](https://en.wikipedia.org/wiki/Data_integrity) and the [authentication](https://en.wikipedia.org/wiki/Authentication) of a message. 

Similar to the blocks in a blockchain, HMACs are chained within a macaroon (whereby each caveat contains a hash referring to the previous caveats), such that caveats that restrict capabilities can only be appended, and not removed.

<img src="/blog/img/macaroons.png" width="100%"/>

Macaroons solve the [cookie-theft problem](https://stackoverflow.com/questions/17030081/how-do-i-prevent-session-hijacking-by-simply-copy-a-cookie-from-machine-to-anoth) associated with OAUTH2 and traditional cloud services by delegating access to a bearer token that can only be used in specific circumstances through HMAC chained ‘caveats’ (i.e. restrictions on IP, time-server parameters, and third- party auth discharges). These caveats can be extended and chained, but not overwritten.

#### Capability-security in the Tardigrade Network

In the Tardigrade Network, macaroons are referred to as API Keys, and enable users to granularly restrict and delegate access to object data in a way that is decentralized and more secure than existing cloud solutions.

From a developer standpoint, Capabilities make it very easy to write code that granularly defines security privileges. Once baked, the rules within the capability cannot be changed, without reissuing the key itself. 

Access management on the Tardigrade platform requires coordination of two parallel constructs - [Authorization](https://storj.io/blog/2019/05/flexible-file-sharing-with-macaroons/) and [Encryption](https://storj.io/blog/2018/11/security-and-encryption-on-the-v3-network/). With macaroons, both of these constructs work together to provide an access management framework that is secure and private, as well as extremely flexible for application developers. 

A macaroon embeds the logic for the access it allows and can be restricted, simply by embedding the path restrictions and any additional restrictions within the string that represents the macaroon. Unlike a typical API key, a macaroon is not a random string of bytes, but rather an envelope with access logic encoded in it.

To make the implementation of these constructs as easy as possible for developers, the Tardigrade developer tools abstract the complexity of encoding objects for access management and encryption/decryption (<https://godoc.org/storj.io/storj/lib/uplink#hdr-API_Keys>).

**Macaroons in action**

While the possibilities for access controls that can be encoded in a caveat are virtually unlimited, the specific caveats supported on the Tardigrade Platform are as follows:

* **Specific operations:** Caveats can restrict whether an API Key can perform any of the following operations: Read, Write, Delete, List 
* **Bucket:** Caveats can restrict whether an API Key can perform operations on one or more Buckets 
* **Path and path prefix:** Caveats can restrict whether an API Key can perform operations on Objects within a specific path in the object hierarchy 
* **Time window**: Caveats can restrict when an API Key can perform operations on objects stored on the platform 

For some sample Go code around access-restriction, check out <https://godoc.org/storj.io/storj/lib/uplink#example-package--RestrictAccess>

#### Conclusion

Macaroons are a great example of capability-based security models in action, and Storj is a shining example of their implementation in decentralized cloud protocols. 

In Storj, we refer to our implementation of macaroons (HMACs) as simply API Keys. Using macaroons as a construct for API keys is innovative and useful because of their:

* **Speed:** HMACs are very fast and lightweight 
* **Timeliness:** Can require fresh credentials and revocation checks on every request 
* **Flexibility:** Contextual confinements, attenuation, delegation, and third-party caveats 
* **Adoptability:** HMACs can run everywhere 

One of the best ways to learn about capability-based models is to try them in action.

Sign up for the developer [waitlist](https://storj.io/sign-up/), join our community [forum](https://forum.storj.io/), and let us know what you think!

\--

Thanks to Noam Hardy and JT Olio.

#### Sources

<http://srl.cs.jhu.edu/pubs/SRL2003-02.pdf>

<http://zesty.ca/zest/out/msg00139.html>

<http://cap-lore.com/CapTheory/ConfusedDeputy.html>

<https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41892.pdf>
