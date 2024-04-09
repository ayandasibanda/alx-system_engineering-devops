# 0x10. HTTPS SSL

---
## Learning Objectives :bulb:
What you should learn from this project:

🔒 Understand the main roles of HTTPS SSL and its importance in securing web traffic.  
🔑 Learn the purpose of encrypting traffic and the concept of SSL termination.

### HTTPS SSL's Two Main Roles:
1. **Authentication:** HTTPS SSL provides a means to verify the identity of a website or server, ensuring that users are connecting to the intended destination rather than a malicious entity impersonating it.
   
2. **Encryption:** HTTPS SSL encrypts the data transmitted between the web server and the user's browser, ensuring that sensitive information such as login credentials, payment details, and personal data remains secure and confidential during transit.

### Purpose of Encrypting Traffic:
The primary purpose of encrypting traffic, facilitated by HTTPS SSL, is to safeguard the confidentiality and integrity of data transmitted over the internet. By encrypting data, it becomes unreadable to anyone who may intercept it illegitimately, thus preventing unauthorized access to sensitive information. Encrypting traffic also helps in mitigating various cybersecurity threats, such as data breaches, identity theft, and eavesdropping.

### SSL Termination:
SSL termination, often implemented by web servers or load balancers, refers to the process of decrypting encrypted SSL/TLS traffic at the termination point, typically at the network perimeter or within an internal network. Once the encrypted traffic is decrypted, it can be inspected, analyzed, and processed by the server or load balancer before being forwarded to its destination. SSL termination is crucial for tasks such as content inspection, load balancing, and application acceleration, as it allows the server to handle decrypted data efficiently while ensuring end-to-end encryption between the client and the termination point.

---

### [0. HTTPS ABC](./0-https_abc)
* Similar to project 0x07, utilize numbers in your answer file to explain HTTPS concepts.

### [1. World wide web](./1-world_wide_web)
* Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier. Write a Bash script that displays information about subdomains.

### [2. HAproxy SSL termination](./2-haproxy_ssl_termination)
* "Terminating SSL on HAproxy" means HAproxy is configured to handle encrypted traffic, unencrypt it, and pass it on to its destination.

### [3. No loophole in your website traffic](./100-redirect_http_to_https)
* Enforce HTTPS traffic to prevent unencrypted traffic. Configure HAproxy to automatically redirect HTTP traffic to HTTPS.

---

## Author
* **Ayanda Sibanda** - [ayandasibanda](https://github.com/ayandasibanda)

