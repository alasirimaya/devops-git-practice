# 🐳 Flask Multi-Stage Docker Container

A containerization exercise completed during my DevOps training using a simple Flask application deployed on an Oracle Cloud Infrastructure (OCI) compute instance.

The project demonstrates building a lightweight Python web application into a Docker-compatible container image using a multi-stage Dockerfile.

---

## 🚀 What I Implemented

- Created a simple Flask web application
- Wrote a multi-stage Dockerfile
- Used `python:3.12-slim` as the base image
- Installed Python dependencies in a separate builder stage
- Copied only the required dependencies into the final image
- Exposed the Flask application on port `5000`
- Built and tagged custom container images
- Ran and tested the container on an OCI Compute instance

---

## 📁 Project Structure

```text
flask-container/
├── app.py
├── Dockerfile
├── requirements.txt
└── README.md
```

---

## 🏗️ Multi-Stage Build

The Dockerfile uses two stages:

### 1. Builder Stage

Installs the dependencies listed in `requirements.txt` into a dedicated installation directory.

### 2. Final Stage

Creates the runtime image and copies only the installed dependencies and application source code required to run the Flask service.

This separates dependency installation from the final runtime environment.

---

## 🛠️ Technologies

- Docker / Podman
- Python
- Flask
- Linux
- Oracle Cloud Infrastructure (OCI)

---

## ▶️ Build

```bash
docker build -t flask-oci-app .
```

When using Podman:

```bash
podman build -t flask-oci-app .
```

## ▶️ Run

```bash
docker run -d -p 5000:5000 flask-oci-app
```

The application can then be tested locally with:

```bash
curl http://localhost:5000
```

---

## 📚 Skills Practiced

- Container image creation
- Multi-stage Docker builds
- Dockerfile configuration
- Container port mapping
- Python dependency management
- Running containers on a cloud VM
- Testing containerized services from Linux
