# 🧠 Homelab Documentation
The repository contains complete homelab documentation: architecture, network topology, hardware and services inventory, configuration files, runbooks and procedures.


# Table of contents
1. [About the project](./README.md)
2. [Architecture and diagrams](./02_network/topology.md)
3. [Hardware inventory](./01_inventory/devices.md)
4. [Services inventory](./03_services/)
5. [Procedures](./04_procedures/)


## Tech stack
- Docker
- Tailscale
- Synology DSM
- GIT + Markdown + Mermaid


## 🔐 Security & Secrets

This repository does NOT contain any secrets.

- All credentials are stored outside Git
- Environment variables are documented using `.env.example`
- Real values are managed via a password manager

