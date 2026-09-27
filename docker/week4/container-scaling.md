# Container Scaling and Debugging

## Objective
Practice scaling containerized backend services and troubleshooting
container networking and runtime issues using Podman Compose.

## Application
Body Tracker full-stack application:
- PostgreSQL database
- Node.js backend
- Nginx frontend

## Tasks Completed
- Inspected running containers using Podman.
- Monitored backend logs to identify runtime issues.
- Modified the Compose configuration to support backend scaling.
- Removed the fixed backend container name and host port mapping.
- Used an internal exposed port for backend replicas.
- Scaled the backend service from one instance to two instances.
- Diagnosed and removed a stale Podman pod that prevented new containers from starting.
- Verified both backend replicas started successfully.
- Verified backend-to-PostgreSQL service discovery through the Podman network.

## Verification
Two backend replicas were successfully running:

- body-tracker-app_backend_1
- body-tracker-app_backend_2

Both backend instances were running on internal port 5000 and were
able to resolve the PostgreSQL service through the container network.

## Key Learning
Container replicas cannot share the same fixed container name or host
port mapping. Scalable services should use unique container names and
internal container networking, with external traffic normally handled
through a proxy or load balancer.
