1. 
<!DOCTYPE html>
<html>
<body style="margin: 30%;">
<h2>Registration Form</h2>
<form>
  Name: <input type="text" name="name"><br>
  Email: <input type="email" name="email"><br>
  Password: <input type="password" name="password"><br>
  Gender: <input type="radio" name="gender">Male <input type="radio" name="gender">Female<br>
  <input type="submit" value="Register">
</form>
</body>
</html>


git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bitwisebinary/devops.git
git push -u origin main


2.

# Setup
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Create or clone a repo
git init
git clone <repo_url>

# Check status and track files
git status
git add <filename>
git add .

# Commit changes
git commit -m "Your commit message"

# Branching
git branch
git branch <branch_name>
git checkout <branch_name>
git merge <branch_name>

# Connect to GitHub
git remote add origin <repo_url>
git push -u origin main
git pull origin main

# Logs and differences
git log
git diff

3.

git clone <URL>

4.  

# 1. Update packages
sudo apt update

# 2. Install Java (required for Jenkins)
sudo apt install openjdk-17-jdk -y

# 3. Add Jenkins repository key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# 4. Add Jenkins repo
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# 5. Install Jenkins
sudo apt update
sudo apt install jenkins -y

# 6. Start and enable Jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# 7. Access Jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
