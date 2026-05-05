
## What is a honeypot (from a cybersecurity perspective)?

Honeypot are systems that are built deliberately with vulnerabilies, in other to attract attackers so that defenders can observe, study, and detect the hackers malicious behavior.

## what services they mimic, 
Honeypot can mimic Servers, Decvices like IoT or ICS and also Windows file shares.

## What they are used for

- They can be used for detecting attacks 
- To study attackers behaviour 
- For deception and delay to waste attacker's time and create uncertainty in the environment.

## Are they defense or offense (give me your reasoning).
Since they arent been used to attack anyone and they help defenders to detect and understand threats, i will count them as a defensive tool. 

**_Find a paper about honeypots and tell me about it._**

 - Title: The Role of Honeypots in Modern Cybersecurity Strategies  
  
  https://ieeexplore.ieee.org/abstract/document/10883300?casa_token=3S4xV6ukuisAAAAA:S1gCZZae9axrw9aIJjcddRY79tMoAlq9pgXc-rKd6vdnwprmuEKUW9ZkmhQou1-KPRTcb_sLM5c

## The abstract and introduction Summary. Really anything honeypot related.

The paper talks about how honeypots can be integrated into moderns cybersecurity frameworks especially in a system like IDPS, firewall, SIEM and SOAR. It points out that honeypots act as a deceptive decoy system that capture attacker's behaviour and enables deepper analysis of threats. 

The introduction frames the problem of how cyber threats are becoming more complex and frequent,which requires security systems that detect attacks and also provide actionable intelligence. These is where honeypot comes in.

They introduced the use of AI and ML and how it transforms honeypots from passive traps into predictive, adaptive system that is capable of real time anomaly and improves detection accuracy.


### Progress you have made on your midterm projects.
i was ablt to create a structure for the project, creating folders and some of the files and services needed

i created a docker-compose that defines the containers for my gateway, MTD controller, service-a, service-b and also the internal networks. 

i was able to write the dockerfile for the service-a service-b, gateway and the MTD controller

still working on the services file(the python flask code)

## References 
- https://www.geeksforgeeks.org/blogs/what-is-honeypot/
- https://Google.com