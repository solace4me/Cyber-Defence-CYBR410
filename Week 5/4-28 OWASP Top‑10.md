## Week 5 defense with many instances
## Name: Temitope James D
### Tell me what the OWASP Top-10 is.

The OWASP Top‑10 is a globally recognized list of the ten most critical web application security risks, maintained by the Open Web Application Security Project (OWASP). It act like a baseline awareness document that guides developers, security engineers, and organizations regarding the most common and impactful classes of web vulnerabilities

### Tell me what a Common Weakness Enumeration (CWE) is .

CWE is a standardized catalog of software and hardware weaknesses that helps developers, security analysts, and tools identify, discuss, and prevent security flaws.

### Is there a correlation between the two (OWASP and CWE)? Be descriptive.

Yes, When you check the OWASP you will notice that OWASP items are broad risk categories, while CWEs are specific weaknesses that fall under those categories.

Something like OWASP “Injection” maps to CWEs like CWE‑89 (SQL Injection). This mapping allows organizations to trace a discovered vulnerability (CWE) back to a broader risk category (OWASP), improving reporting, compliance, and remediation planning

### Describe how a particular MTD technique mitigates one of the OWASP Top-10.

Using Dynamic Network Topology (Subnet Shuffling), it directly mitigate OWASP A01: Broken Access Control. DNT reduces the attacker’s ability to exploit Broken Access Control by constantly changing the internal network structure that services reside on. 



### Describe how N-versioning can mitigate one of the OWASP Top-10.

Consedering N‑Versioning mitigating OWASP A03: Injection. Injection exploits depends on predictable parsing behavior like SQL engines interpreting special characters in a uniform way. With N‑Versioning, each service instance may use a different database engine, query parser, or input‑handling library. An attacker’s payload that succeeds on one version may fail or be sanitized on another, breaking the reliability of the exploit chain.

