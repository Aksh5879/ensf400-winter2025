# ensf400-winter2025
This repository contains the ENSF 400 Winter 2025 course project, where we implement a CI/CD pipeline for an open-source application. The project involves GitHub workflows, containerization (Docker), automated testing, and Jenkins integration to streamline deployment and validation processes. Initially our first check-in involves creation of a github repo(with all team members participating in the development and maintenance of the project) and containerization of a DockerFile(we have used Gradle for image creation).


- **Version Control & Collaboration** using GitHub
- **Containerization** with Docker using Gradle
- **Continuous Integration & Deployment (CI/CD)** using Jenkins
- **Automated Testing & Code Quality Checks** (SonarQube, JMeter, DependencyCheck)
- **Documentation & Demo** to showcase the pipeline workflow

## 🛠️ How the Professor/TA Can Access the Repository
### 📌 GitHub Repository Link
🔗 **[GitHub Repository - ensf400-winter2025](https://github.com/Aksh5879/ensf400-winter2025)**  
- The project is structured into different branches:
  - **`main` branch** → Stable, reviewed code
  - **`DOCKER-SETUP` branch** → Latest development with Docker integration
##   📌 **Docker HUB Repository Link**
(https://hub.docker.com/repositories/aksh5879)

## 🛠️ How to Run the First Check-In
### 🔹 **Option 1: Run the Project from Docker Hub (Recommended)**
The easiest way to run the project is by **pulling the prebuilt Docker image** from **Docker Hub**.

#### **Ensure Docker is Installed**
**1.** Install **[Docker Desktop](https://www.docker.com/products/docker-desktop)**
- Verify installation:
  ```bash
  docker --version
### **2️ Pull and Run the Prebuilt Image**
Run the following commands:

```bash
docker pull aksh5879/ensf400-gradle-app:latest
docker run -p 8080:8080 aksh5879/ensf400-gradle-app:latest

### ***Open in Web Browser***
**With these commands, the image should open in web browser saying "Hello, this is a web server!".**

## Team Members
•⁠  ⁠Akshar: (GitHub & Workflow Management)

•⁠  ⁠Shubham: (Containerization)

•⁠  ⁠Jindjeet: (CI/CD & Jenkins)

•⁠  ⁠Tahil: (Testing & Documentation)

## Docker testing
1)Docker was built successfully and took 82.5 seconds to build.
2)Docker ran smoothly without any errors and with the help of port forwarding, an URL was created which opened in web browser.
