# Jenkins + Docker Agent Setup

This guide sets up Jenkins on an Ubuntu-based server, exposes it to the internet, and configures Docker as a Jenkins agent.

---

## 🔧 Requirements

- Ubuntu 20.04+ server
- SSH access
- Docker installed
- Open port 8080 (default Jenkins port)
- Ansible or Bash (depending on your preferred method)

---

## 🚀 Steps

### 1. Install Jenkins

- Install Java
- Add Jenkins repository
- Install Jenkins
- Start and enable the Jenkins service

### 2. Expose Jenkins to the Internet

- Open port 8080 in your firewall
- Or use Nginx reverse proxy (optional)
- Get your server IP and access `http://<your-ip>:8080`

### 3. Setup Docker

- Install Docker on the same or another machine
- Add the Jenkins user to the Docker group

### 4. Configure Docker Agent in Jenkins

- Go to **Manage Jenkins > Manage Nodes and Clouds**
- Add a new node
- Set up a Docker-based agent with the appropriate labels
- Use Docker socket bind mount or Docker plugin

---

## 📂 File Structure

