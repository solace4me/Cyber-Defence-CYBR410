## Temitope James Dada
## Today’s journal
### Give me examples of each principle as it does (or does not) apply to your deployment.
**Least Privilege**
This is a principle of least privilege (PoLP), a security concept that ensures that users, applications, or systems are granted only the minimum access or permissions necessary to perform their tasks.

In general, we were granted the privilege needed for our project execution, such as sudo permission.

And in our project, our backend containers run with minimal permissions, and most of them cannot modify system files. This makes any attempt detectable by the falco setup.

Also SSH access to the server is restricted to approved public keys only, preventing password based logins.
**Economy of Mechanism**
Economy of mechanism talks about simplifying the design and implementation of security mechanisms.

Each backend services in our project is stateless and lightweight, so the Controller handles only backend movement and Falco/Talon adds runtime detection without modifying application code. 
**Fail‑Safe Defaults**
The Fail-Safe Defaults design principle states that a user should have no access by default to any resource. Access is only granted when it is explicitly authorized

Our security posture defaults to deny unless explicitly allowed. SSH is key‑only, so failed password attempts are automatically rejected. Kubernetes deployments automatically recreate clean pods when Talon terminates a suspicious one, ensuring the system fails into a safe, known‑good state. Honeypots also act as a fail‑safe: if an attacker uses outdated backend information, they are routed to a decoy instead of a real service.
**Open Design**
The Open Design principle advocates that a system’s security or functionality should not depend on secrecy of its design.in other to promote transparency, collaboration, and public scrutiny.

Our entire system relies on open‑source tools, such as Falco, Sidekick, Talon, OpenCanary, Kubernetes which are publicly verifiable mechanisms.

## Define the principle of least common mechanism and give an example.
Least Common Mechanism means systems should avoid sharing mechanisms, components, or resources between users or services unless absolutely necessary.

The purpose is to reduce unintended information leakage, reduce coupling, and prevent one compromised component from affecting others.

**Example of that is:**
When each user have their own authentication session instead of sharing a global session token or separate configuration files per service, instead of one shared config that could leak data across services.