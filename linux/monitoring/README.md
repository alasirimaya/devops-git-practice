# Linux System Health Monitoring

A Bash script developed during my DevOps training to monitor basic Linux system health.

## Features

- Displays CPU load and system uptime
- Reports RAM usage
- Monitors root filesystem disk usage
- Extracts disk utilization using `awk` and `sed`
- Generates a warning when disk usage exceeds 80%

## Usage

```bash
chmod +x system_health.sh
./system_health.sh
