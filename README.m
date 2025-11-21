

<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>

<center>
    <h2>Registration Form</h2>

    <form>
        <label>First Name:</label><br>
        <input type="text" required><br><br>

        <label>Last Name:</label><br>
        <input type="text" required><br><br>

        <label>Email:</label><br>
        <input type="email" required><br><br>

        <label>Password:</label><br>
        <input type="password" required><br><br>

        <label>Gender:</label><br>
        <select>
            <option value="">Select</option>
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select><br><br>

        <button type="submit">Register</button>
    </form>
</center>

</body>
</html>



sudo apt install git -y
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/bitwisebinary/devops.git
git push -u origin main

genarate token - setting - developer setting - personal acces toekn - token classic - generate token

git pull origin main


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




5)--- not yet confirmed

| Step | Command | Explanation |
|------|----------|-------------|
| *2. Initialize Git repository* | git init | Initializes a new local Git repository. |
| *3. Add files to staging* | git add . | Adds all files for commit. |
| *4. Commit changes* | git commit -m "Initial commit - Hello Jenkins" | Saves the staged files with a commit message. |

---

## ✅ FULL CLEANED + CORRECT COMMAND SEQUENCE

```bash
# --- Setup Java Project ---
mkdir jenkins-demo
cd jenkins-demo

# Create Hello.java
nano Hello.java
# Add this inside:
 public class Hello {
    public static void main(String[] args) {
         System.out.println("Hello Jenkins");
    }
 }

# --- Initialize Git ---
git init
git add .
git commit -m "Initial commit - Hello Jenkins"

# --- Connect to GitHub ---
git remote add origin <repository_URL>
git branch -M main
git push -u origin main

# --- Configure Jenkins ---
# 1. Open Jenkins Dashboard
# 2. Click "New Item" → Choose "Freestyle project"
# 3. Under "Source Code Management", select Git
# 4. Add repository URL and credentials

# --- Define Build Steps ---
echo "Building Java Project..."
javac Hello.java
echo "Running Project..."
java Hello

# --- Run Jenkins Job ---
# Click "Build Now"
# Jenkins console output:
# Building Java Project...
# Running Project...
# Hello Jenkins
# Finished: SUCCESS


6. # --- Install and setup Docker ---
sudo apt install docker.io -y
docker --version

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

sudo docker run hello-world

# --- Manage images ---
docker pull nginx
docker images


# --- Build custom image ---
nano Dockerfile
sudo docker build -t myapp .

# --- Run containers ---
docker run -d -p 8080:80 myapp
docker ps
docker ps -a

# --- Manage containers ---
docker stop <container_id>
docker start <container_id>
docker restart <container_id>
docker rm <container_id>
docker logs <container_id>

sudo docker run hello-world
sudo docker ps -a
sudo docker images
sudo docker info
sudo docker start <id>
sudo docker run -d <image name>
sudo docker rm <container id>
sudo docker ps -a
sudo docker start <container-id>
sudo docker stop <container-id>


7.


# 1. Create project folder
mkdir registration-form
cd registration-form

# 2. Start Docker service
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

# 3. Pull NGINX image
sudo docker pull nginx
sudo docker images

# 4. Create HTML file
nano register.html
# (Add your HTML form and save)

# 5. Create dockerfile
nano Dockerfile
# Add:
FROM nginx:latest
COPY register.html /usr/share/nginx/html/index.html

# 6. Build Docker image
sudo docker build -t registration-form .

# 7. Run container
sudo docker run -d -p 8080:80 registration-form

# 8. Check running container
sudo docker ps

# 9. Open in browser
# Visit http://localhost:8080



7. (alternative)
Install Docker:

1. sudo apt update


2. sudo apt install docker.io -y



Start Docker:
3. sudo systemctl start docker
4. sudo systemctl enable docker
5. docker --version

Test Docker is working:
sudo docker run hello-world

★ Create a Simple Docker App

Create folder:
mkdir mydockerapp
cd mydockerapp

Create a Python file:
nano app.py
print("Hello from Docker!")
(Ctrl + S, Ctrl + X to save and exit)

Create Dockerfile:
nano Dockerfile
FROM python
COPY app.py .
CMD ["python", "app.py"]
(Ctrl + S, Ctrl + X to save and exit)

Build the Docker image:
sudo docker build -t myapp .

Run the container:
sudo docker run myapp

Output:
Hello from Docker!

7.new one
Sudo apt install docker.io
Sudo systemctl start docker 
Sudo systemctl enable docker 
Sudo docker pull nginx
Sudo mkdir first 
Cd
Nano something.html
Nano DOCKER FILE 
FROM nginx: latest
COPY something.html /usr/share/nginx/html/index.html
Sudo docker build -t first  .
Sudo  docker run -d -p 8080:80 first






