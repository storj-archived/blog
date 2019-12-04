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
When the tech industry began the transition to cloud-based resource provisioning, the attack/security vectors in which DevOps and CISOs focus to protect their resources, shifted along with it. 

Suddenly, protecting users’ data required a fundamentally new approach to containing resources. Rather than simply “defending the perimeter” (through ownership of network infrastructure, firewalls, NICs etc.) the model shifted to an identity-based approach to control access to systems and resources.

This practice became known as Identity and Access Management (IAM), and defines the way users authenticate, access data, and authorize operations in the cloud, in a completely [“trustless” environment](https://www.quora.com/What-does-it-mean-that-Bitcoin-is-trustless).

When it comes to implementations of authorization and authentication on the web, the standard public cloud approach is through [Access Control Lists ](https://en.wikipedia.org/wiki/Access-control_list)(ACLs). However, the [capability-based ](https://en.wikipedia.org/wiki/Capability-based_security)approach leveraged by decentralized networks is definitively more secure, and I will explain why in this blog post.

#### Problems with todays’ ACL model

The ACL model, sometimes referred to as the [Ambient Authority Model](https://wikivisually.com/wiki/Ambient_authority), is based on user identity privileges (for example, through [Role-based Access Control](https://en.wikipedia.org/wiki/Role-based_access_control)). 

The ACL keeps a list of which users are allowed to execute which commands for every capability on an object, or file. This list of abilities is separated from identity which is associated with these abilities. 

<img src="/blog/img/centralized-acl.png" width="40%"/>

Generally, the appeal of ACLs arises from a notion of a singular “SuperAdmin” being able to list and fully control every user's account and privileges. This centralized approach to control creates a massive honeypot for hackers. When the SuperAdmin loses control, the entire system falls apart.

The ACL model associates users to files. Because the ACL model defines access through the user-agent identity (or abstractions like roles, groups, service accounts etc.), each resource acquires its access control settings as the result of a superuser administrator making deliberate access configuration choices for it.

This is a major weakness of the approach, especially within todays’ massively parallel and distributed systems, where resources are accessed across different operating systems and data stores.

The ACL model fails because:

**Failure 1: ambient authority trap**

Ambient authority describes a user privilege that is exercised, but is not knowingly selected by its agent. 

The authority is "ambient" in the sense that it exists in a broadly visible environment (aka an Access Control List) where any subject can request it (and may or may not be denied). 

Systems based on the ACL model often fall into the [ambient authority trap](http://zesty.ca/zest/out/msg00139.html) where user roles are granted an array of permissions in such a way that the user does not know which permissions are being exercised.

In this security flaw, agents are unable to determine the source or the number/types of permission that they have, as the list is held separately on the ACL. In general, if agents cannot identify their privilege set, they cannot safely use an authority on another party’s behalf.

In the world of operating systems and distributed systems, avoiding ambient authority privilege escalation is crucial, especially when running untrusted code. 

Every application today is launched with grossly excessive authority to the users operating systems. This is why many systems implement FreeBSD jails like [Capsicum](https://wiki.freebsd.org/Capsicum) and Linux Docker containers to sandbox software. Google is even working on a new capability-based operating system called [Fuchsia](https://en.wikipedia.org/wiki/Google_Fuchsia) to supercede the Linux Android kernel.

**Failure 2: confused deputy problem**

<img src="/blog/img/confused-deputy-probblem.png" width="100%"/>

A deputy is a program that manages authorities coming from multiple sources. A confused deputy is a delegate that has been manipulated into wielding its authority inappropriately.

Examples of the Confused Deputy Problem can be found across the web. These include injection attacks, cross-site request forgery, cross site scripting attacks, click-jacking etc. These attacks use the victim’s existing program logic to nefarious ends in web applications. 

In order to avoid the Confused Deputy Problem, a subject must be careful to maintain the association between each authority and its intended purpose. This is wholly avoided by the capability-based model described below.

#### Capability-based security is better

Capability-based security is a fundamentally better approach to identity and access management in today’s ACL framework for creating secure Identity and Access Management systems. 

By tying access to keys, rather than a centralized control system, capability-based models push security to the edge, decentralizing large attack vectors known as honeypots.

<img src="/blog/img/capability-based-security.png" width="100%"/>

The capability-based model solves the ambient authority trap and the confused deputy problem by design.

Often referred to as simply a ‘key,’ a capability is the single thing that both designates a resource and authorizes some kind of access to it. The capability is an unforgeable [token](https://en.wikipedia.org/wiki/Access_token) of authority.

Those coming from the Blockchain world will be very familiar with the capability-based security model, as it is the model implemented in Bitcoin where “your key is your money” and in Ethereum where “your key is gas for EVM computations”.

This illustrates the core tenet of the Capability Mindset: “[don’t separate designation from authority.](https://crypto.stanford.edu/cs155old/cs155-spring09/papers/ConfusedDeputy.html)”, preventing the Ambient Authority and the Confused Deputy Problems.

Capabilities make it very easy for developers to write code that granularly defines security privileges. Once baked, the rules within the capability cannot be changed, without changing the key itself. This enables developers to automatically avoid the Ambient Authority trap, as capability is bound to the object itself.

The importance of “privilege separation” holds especially true for trust-minimized decentralized systems, like the Tardigrade decentralized cloud storage service, which provides sophisticated tools for implementing access management to objects within an application. <https://godoc.org/storj.io/storj/lib/uplink#hdr-API_Keys>

Similar to how in the Blockchain world, “your keys are your money,” with Tardigrade, your keys are your data, and macaroons add additional capabilities that allow the owners of data to caveat it, or granularly delegate access for sharing, programatically.

Based on the current state of cutting-edge security research, we think that this model is a fundamentally better approach than the access-control model used by web2 providers. 

Key-based ownership of object data will enable users to intuitively control their data as a first principle, and delegate it as they see fit. The decentralized cloud eliminates the increasingly apparent risk of data loss/extortion due to holding data on one single provider (like Amazon, Google, or Microsoft). Storj, with its Tardigrade service, presents a better model where object data is encrypted, erasure-coded, and spread across thousands of nodes stratified by reputation whereby any and every computer can be the cloud.

#### Macaroons are the key innovation

Macaroons enable granular, programmatic authorization for resources in a decentralized way.

The construction of macaroons was [first formulated by a group of Google engineers](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41892.pdf) in 2014. These chained, nested HMAC constructions are a great example of the capability-based security model and are [deeply integrated into the V3 Storj Network](https://storj.io/blog/2019/05/flexible-file-sharing-with-macaroons/).

They are excellent for use in distributed systems, because they allow applications to enforce complex authorization constraints without requiring server-side modification, making it easy to coordinate between decentralized resource servers and the applications that use them.

Their name, “MAC-aroons”, derives from the [HMAC process](https://en.wikipedia.org/wiki/HMAC) (hash-based message authentication code) by which they are constructed, while also implicitly alluding to a claim of superiority over the [HTTP cookie](https://en.wikipedia.org/wiki/HTTP_cookie). 

In practice, HMACs are often used to simultaneously verify both the [data integrity](https://en.wikipedia.org/wiki/Data_integrity) and the [authentication](https://en.wikipedia.org/wiki/Authentication) of a message. 

Similar to the blocks in a blockchain, HMACs are chained within a Macaroon (whereby each caveat contains a hash referring to the previous caveats), such that caveats which restrict capabilities can only be appended, and not removed.

Macaroons solve the [cookie-theft problem](https://stackoverflow.com/questions/17030081/how-do-i-prevent-session-hijacking-by-simply-copy-a-cookie-from-machine-to-anoth) associated with OAUTH2 and traditional cloud services by delegating access to a bearer token that can only be used in specific circumstances through HMAC chained ‘caveats’ (i.e. restrictions on IP, time-server parameters, and third- party auth discharges) whereby these caveats can be extended and chained, but not overwritten.

In the Tardigrade Network, macaroons are referred to as API Keys, and enable users to granularly restrict and delegate access to object data in a way that is decentralized and more secure than existing cloud solutions.

Access management on the Tardigrade platform requires coordination of two parallel constructs - [Authorization](https://storj.io/blog/2019/05/flexible-file-sharing-with-macaroons/) and [Encryption](https://storj.io/blog/2018/11/security-and-encryption-on-the-v3-network/). With Macaroons, both of these constructs work together to provide an access management framework that is secure and private, as well as extremely flexible for application developers. 

A Macaroon embeds the logic for the access it allows and can be restricted, simply by embedding the path restrictions and any additional restrictions within the string that represents the Macaroon. Unlike a typical API key, a Macaroon is not a random string of bytes, but rather an envelope with access logic encoded in it.

<img src="/blog/img/macaroons.png" width="100%"/>

To make the implementation of these constructs as easy as possible for developers, the Tardigrade developer tools abstract the complexity of encoding objects for access management and encryption/decryption.

**Macaroons in action**

While the possibilities for access controls that can be encoded in a caveat are virtually unlimited, the specific caveats supported on the Tardigrade Platform are as follows:

* **Specific operations**: Caveats can restrict whether an API Key can perform any of the following operations: Read, Write, Delete, List 
* **Bucket:** Caveats can restrict whether an API Key can perform operations on one or more Buckets 
* **Path and path prefix:** Caveats can restrict whether an API Key can perform operations on Objects within a specific path in the object hierarchy 
* **Time window:** Caveats can restrict when an API Key can perform operations on objects stored on the platform 

For some sample Go code around access-restriction, check out <https://godoc.org/storj.io/storj/lib/uplink#example-package--RestrictAccess>

#### Conclusion

Macaroons are a great example of capability-based security models in action, and Storj is a shining example of their implementation in decentralized cloud protocols. 

In Storj, we refer to our implementation of Macaroons (HMACs) as simply API Keys. Using macaroons as a construct for API keys is innovative and useful because of their:

* **Speed** - HMACs are very fast and light-weight 
* **Timeliness** - Can require fresh credentials and revocation checks on every request 
* **Flexibility** - Contextual confinements, attenuation, delegation, and third-party caveats 
* **Adoptability** - HMACs can run everywhere 

One of the best ways to learn about capability-based models is to try them in action.

Sign up for the developer [waitlist](https://storj.io/sign-up/), join our community [forum](https://forum.storj.io/), and let us know what you think!

\--

Thanks to Noam Hardy and JT Olio.

Sources

<http://srl.cs.jhu.edu/pubs/SRL2003-02.pdf>

<http://zesty.ca/zest/out/msg00139.html>

<http://cap-lore.com/CapTheory/ConfusedDeputy.html>

<https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/41892.pdf>
