# Jenkins Installation with Docker Agent on Ubuntu

This guide helps you install Jenkins on an Ubuntu server, expose it publicly (port 8080), and configure Docker as a Jenkins agent.

---

## 🔧 Requirements

- Ubuntu 20.04+ VM or server
- Open port 8080 (inbound rule in your cloud/VPC firewall)
- Internet access on the server

---

## 🚀 Setup Instructions

### 1. Update System & Install Java

```bash
sudo apt update
sudo apt install -y openjdk-11-jdk
