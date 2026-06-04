```mermaid
graph LR
  Internet --> RouterISP[ISP Router]
    RouterISP --> Synology[Synology NAS]
    RouterISP --> Gmktec[Proxmox VE host]
    Synology --> ExternalHD[Backup HDD]
```