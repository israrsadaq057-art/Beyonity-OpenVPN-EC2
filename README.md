# BEYONITY OPENVPN SERVER ON EC2

## NETWORK AND IT ADMINISTRATOR

**Israr Sadaq**  
CCNA | CCNP | Master in Information and Communication Engineering  
**Email:** israrsadaq057@gmail.com  
**GitHub:** https://github.com/israrsadaq057-art  

---

## PROJECT OVERVIEW

This project implements a **secure remote access solution** for Beyonity artists using OpenVPN deployed on an AWS EC2 instance.

Artists can securely work from home (WFH policy) and access internal AWS infrastructure including:

- S3 storage (project assets)
- EC2 render farm (distributed rendering system)

All traffic is encrypted via a VPN tunnel.

---

## ARCHITECTURE
```

Artist Work from Home
     │
     ▼
OpenVPN Client
(Windows/Mac/Linux)
     │
     ▼  (UDP 1194)
EC2 OpenVPN Server
(13.218.143.190)
     │
     ▼  (Encrypted Tunnel)
Internal AWS Network
(S3, EC2 Render Farm)

```


---

## AWS RESOURCES

| Component        | Specification              |
|-----------------|---------------------------|
| Instance Type   | t3.micro (Free Tier)      |
| AMI             | Ubuntu 22.04 LTS          |
| Security Group  | UDP 1194, TCP 22          |
| VPN Protocol    | OpenVPN (UDP)             |
| Encryption      | AES-128-GCM               |
| VPN Subnet      | 10.8.0.0/24               |

---

## FEATURES

| Feature                          | Status |
|----------------------------------|--------|
| OpenVPN Server                   |  Running |
| Client Certificate Management    |  Add / Revoke |
| Secure UDP 1194 Configuration    |  Enabled |
| Remote Artist Access             |  Tested |
| Access to S3                     |  Working |
| Access to EC2 Render Farm        |  Working |

---

## CLIENT CERTIFICATES

| Client | Config File | Status |
|--------|------------|--------|
| anna   | anna.ovpn  |  Created |
| ben    | ben.ovpn   |  Created |
| carla  | carla.ovpn |  Created |
| david  | david.ovpn |  Created |

---

## REPOSITORY STRUCTURE
```
beyonity-openvpn-ec2/
├── README.md
├── scripts/
│ ├── deploy-openvpn.ps1
│ └── client-manager.ps1
├── client-configs/
│ ├── anna.ovpn
│ ├── ben.ovpn
│ ├── carla.ovpn
│ └── david.ovpn
├── screenshots/
└── .github/workflows/
└── deploy.yml
```
---

## ScreenShots 
---
## OpenVPN Connected

<img width="1920" height="1080" alt="OPEN_VPN_GUI_CONNECTED" src="https://github.com/user-attachments/assets/12b6e4c9-f380-4e6d-a146-81451a384d32" />

 ## OpenVPN Running Instances

 <img width="1920" height="1080" alt="OPEN_VPN_RUNNING_INSTANCE" src="https://github.com/user-attachments/assets/def9b0bc-df10-4bbb-b464-fd4f805d9007" />

 ## OpenVPN Tunnel Interface
 
<img width="1920" height="1080" alt="Open_VPN_TUNNEL_INTERFACE" src="https://github.com/user-attachments/assets/74b7163c-7e94-4dc5-a656-77125e03d89b" />

 ## Downloading OpenVPN In EC2
 
<img width="1920" height="1080" alt="DOWNLOADEING_OPEN_VPN_IN_EC2" src="https://github.com/user-attachments/assets/1f42363d-cdc8-4c98-808e-1998c52acb24" />

 ## Adding OpenVPN Port to Security Group
 
<img width="1920" height="1080" alt="ADDING_OPEN_VPN_PORT_TO_SECURITY_GROUP" src="https://github.com/user-attachments/assets/6c4160e6-b10a-484c-be5f-b9c3407dd4a3" />

 ## Adding Client
<img width="1920" height="1080" alt="Adding_Clients" src="https://github.com/user-attachments/assets/87892f81-972d-4f4f-937b-bf5e5d34c057" />

---

## About Me

Network and IT Administrator | CCNA | CCNP | Master in Information and Communication Engineering
Experienced in optical networks, enterprise firewalls, cloud infrastructure (AWS), and automation.
Portfolio: github.com/israrsadaq057-art

 
