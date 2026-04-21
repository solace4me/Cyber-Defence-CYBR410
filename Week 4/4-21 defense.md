## Name: Temitope James D.
## What part of the Mitre ATT&CK matrix does each MTD technique disrupt?

1. Port Hopping
   **Command and Control**
   These include Application Layer Protocol(T1071), Non‑Application Layer Protocol(T1095), Non‑Standard Port (T1571).

   Attackers rely on predictable, stable ports to communicate with malware or remote shells. Port hopping breaks this assumption by dynamically changing the listening port on a schedule or trigger.

   **Discovery**
   Attackers performing port scans (T1046) get inconsistent results because the service keeps moving.

2. Network Address Shuffling (NAS)
   **Reconnaissance**
   These breaks techniques like: 
   – Gather Victim Network Information (T1590)
   – Gather Victim Host Information (T1592)
   – Active Scanning (T1595)

   Attackers depend on stable IP addresses to map the network. NAS invalidates their mapping by periodically reassigning IP addresses to hosts or services.

   **Lateral Movement**
   Techniques like Remote Services (T1021), Lateral Tool Transfer (T1570), depend on stable IPs and NAS breaks these pathways.