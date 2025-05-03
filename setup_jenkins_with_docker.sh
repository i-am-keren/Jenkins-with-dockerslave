
---

### 📄 `setup_jenkins.sh` (optional script file you can include)

```bash
#!/bin/bash

# Update and install Java
sudo apt update
sudo apt install -y openjdk-11-jdk

# Add Jenkins repo and key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install Jenkins
sudo apt update
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Install Docker
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker

# Add Jenkins to Docker group
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins

echo "Jenkins and Docker setup complete!"
echo "Initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
