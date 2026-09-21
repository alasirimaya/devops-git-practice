# 🐳 Multi-Container Application Deployment

A hands-on DevOps deployment exercise completed during my training using an existing full-stack Body Tracker application.

> The application source code was provided to me as a training project. My work focused on containerization, deployment, troubleshooting, service communication, and persistent storage rather than development of the application itself.

---

## 🎯 Objective

Deploy and validate a full-stack application composed of multiple services on a Linux-based Oracle Cloud Infrastructure (OCI) Compute instance.

---

## 🏗️ Architecture

The deployment consists of three containerized services:

```text
                    ┌──────────────────┐
                    │     Frontend     │
                    │      Nginx       │
                    │    Port 3000     │
                    └────────┬─────────┘
                             │
                             ▼
                    ┌──────────────────┐
                    │     Backend      │
                    │     Node.js      │
                    │    Port 5000     │
                    └────────┬─────────┘
                             │
                             ▼
                    ┌──────────────────┐
                    │    PostgreSQL    │
                    │    Port 5432     │
                    └────────┬─────────┘
                             │
                             ▼
                    Persistent Volume
```

---

## 🛠️ Technologies

- Docker / Podman
- Docker Compose / Podman Compose
- Linux
- PostgreSQL
- Node.js
- Nginx
- Oracle Cloud Infrastructure (OCI)

---

## ⚙️ Work Completed

During this exercise, I:

- Deployed a three-service application using Compose
- Built the backend and frontend container images
- Configured PostgreSQL as the database service
- Worked with container networking and service-to-service communication
- Configured environment variables for backend/database connectivity
- Exposed and verified application service ports
- Created and verified persistent PostgreSQL storage
- Inspected running containers and application logs
- Connected directly to PostgreSQL inside the database container
- Verified that database data persisted through the configured volume
- Rebuilt and restarted services while troubleshooting deployment issues

---

## 🔧 Troubleshooting

During the initial deployment, the backend container failed to start because of a `nodemon: Permission denied` issue.

The issue was resolved by preventing host `node_modules` content from being included in the container build context and rebuilding the application image.

This exercise provided practical experience diagnosing container failures using logs, rebuilding images, and validating service status after changes.

---

## 💾 Persistent Storage

A named volume was configured for PostgreSQL data.

Persistence was verified by:

1. Connecting to PostgreSQL inside the running database container
2. Creating test data
3. Confirming the data was stored successfully
4. Verifying the named volume used by the database service

This demonstrated how containerized databases can preserve state independently of the container lifecycle.

---

## 🔍 Deployment Verification

The environment was validated using tools and commands such as:

```bash
podman-compose up -d
podman-compose ps
podman logs <container>
podman volume ls
podman exec <container> ...
curl ...
```

These were used to inspect service status, troubleshoot failures, verify networking, and test the deployed application.

---

## 📚 Skills Practiced

- Multi-container orchestration
- Docker Compose / Podman Compose
- Container networking
- Container logs and troubleshooting
- PostgreSQL in containers
- Persistent volumes
- Environment configuration
- Image rebuilding
- Linux administration
- Cloud-based application deployment
