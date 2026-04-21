## Name: Temitope James Dada
### Today’s journal
### Study the Mitre ATT&CK matrix.
The MITRE ATT&CK Matrix is a global knowledge base that is available to the public, it consist of adversary tactics and techniques which is based on real world cyberattacks. It organizes attacker behavior into tactics and techniques. This allows defenders to map threats, build detections, and design defenses. 

```
• Pick 3 columns and discuss a defense for each column.
– This doesn’t have to be all encompassing, there are many types of
attacks for each column.
– Just pick a specific attack for that column and describe a defense.
– Describe to which environment it’s applicable (could be both?).
– Describe how you could implement this with the environments we’ve
used thus far(VMs,containers, both)
• No less than 1 paragraph per column.
```
**Initial Access — Technique: Phishing (T1566)**
Phishing is a technique where attackers trick users into opening malicious links or attachments. A strong defense is email filtering combined with attachment sandboxing.

This defense applies primarily to enterprise VM environments, but containers can also be used to sandbox suspicious files. 

We could simulate this by using a separate Linux VM as a “sandbox” where attachments are opened inside a restricted environment using user namespaces and seccomp to limit system calls.

**Execution — Technique: Command and Scripting Interpreter (T1059)**
These is when attackers uses PowerShell, Bash, Python, or other interpreters to execute malicious commands. A strong defense is restricting interpreter execution using application whitelisting (e.g., AppArmor, SELinux, Windows AppLocker)

We can implement this by building a minimal container image (e.g., Alpine Linux) that does not include Bash or Python, and by applying AppArmor profiles to restrict what commands the container can execute. With this we can use containerization to naturally reduce the attack

**Lateral Movement — Technique: Remote Services (T1021)**
Attackers move laterally by abusing SSH, RDP, SMB, or other remote services. A strong defense is enforcing MFA and disabling password authentication for remote services. This defense applies mostly to VM environments, since containers typically do not run SSH daemons.  We could configure Ubuntu VM to use SSH key‑based authentication only, disable password login in `/etc/ssh/sshd_config`, and enforce MFA using tools like Google Authenticator. 
## Today’s journal continued.
• Find the cgroup of a program running in a docker container.
– How did you find it?

In a container we can run `cat /proc/self/cgroup`

– Is it different than a program running in the normal user’s space?
Yes.
A normal user‑space program belongs to the host’s default cgroups (e.g., /user.slice, /system.slice). A Docker container process belongs to container‑specific cgroups

– Dose docker utilize croups?
Yes
  Docker uses cgroup v1 or v2 to enforce:
 - CPU shares and quotas
 - Memory limits
 - Block I/O throttling
 - PIDs limits


• How do the namespaces in a containerized program compare to that of
the same user? (hint lsns)
On the host machine we can use 

`lsns | grep <container_pid>`

– Does docker utilize namespaces?
Yes — Docker heavily relies on namespaces for isolation.

– If so, which ones?
  - PID, UTS, IPC, MNT