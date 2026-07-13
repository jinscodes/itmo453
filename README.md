# ITMO 453 Server Administration Project

## 1. Project Overview

This project demonstrates Linux server deployment, automation, monitoring, security hardening, and backup/recovery practices. The environment was built using Ubuntu Server and includes infrastructure automation, monitoring, and operational management.

---

## 2. Deployment

The server deployment is automated using Bash scripts and Ansible playbooks.

- deploy.sh installs and configures required packages.
- Ansible playbooks automate system configuration.
- Docker Compose deploys monitoring services.

---

## 3. Monitoring

The monitoring stack consists of:

- Prometheus – Collects infrastructure metrics.
- Grafana – Visualizes metrics through dashboards.
- Uptime Kuma – Monitors service availability.
- Node Exporter – Provides system metrics to Prometheus.

---

## 4. Security

Security measures include:

- UFW firewall
- SSH hardening
- Fail2Ban
- TLS certificates
- Access control review

---

## 5. Backup

Automated backups are performed using `backup.sh`.

Backups are stored in the `backups/` directory and can be restored if configuration files are lost.

---

## 6. Recovery

Recovery consists of:

1. Locate the required backup.
2. Restore configuration files.
3. Restart affected services.
4. Verify system functionality.

---

## 7. Maintenance

Routine maintenance includes:

- Applying system updates
- Reviewing monitoring dashboards
- Checking service status
- Verifying backups
- Reviewing security logs