## Intrusion Detection
## Name: Temitope James D

**IDS**
• What can we monitor to detect intrusion?
- Network traffic: under the network traffic we can monitor thr packet captures and the protocal behavior
- System calls: We can monitor the kernel-level and detect privilege escalation
- Data Source: File integrity, process activity and log files can also be monitored.

**Detection is defense?**
• Are these the same thing?
- No, detection is to detect what is about to happen or that is happening. it tells the something that is happening while defense is to actively prevent or mitigates an attack
  
• Are they complementary.
- Yes, when you detect an attack the next thing is to buid a defense against it. defense without detecting first can lead to you blocking things blindly. 

• How can you defend what you can’t see?
- it is mostly impossible to defend without detecting first.

Today’s journal
• Update me on what you’ve done for your lab.
- I did the installation (mickrok8s, docker, created a virtual environment(venv), install FastAPI) of what was needed for my part. Also created the folders i will be using. 
• Let me know what still needs to be done and who’s responsible to get it
done.
- The person handling the honeypot(opencanary) have started also. 
- The frontend and the orchestration is not yet on the server
 
• Tell me who the most helpful person in your group is.

I think Kyle.

• Pick 2 IDS/NSMs and tell me a bit about them (preferably open source).
– Write at least 2 paragraphs.

- Security Onion: This is a hybrid detection system that supports signature-based detection and anomaly based detection. it encompase multiple tools together which makes it to have many detection engines. It provides deep insight into detection through a centralised interface.

- Snort: Snort is a detection tool that analyses network traffic in real time. it is lightweight and uses signature based detection. it can operate in three modes: packet sniffer, packet logger, and full IDS mode. It has high accuracy for known threats.
  
– Which are you more likely to use.
- Security Onion seems to have more advantage been a hybrid detection tool. i would prefer that.

– Which one do you want your group to use.
i would prefer Snort for the group work, since we are building a prototype lightweight project.