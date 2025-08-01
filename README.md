# Docker Home Monitoring Lab

- Configs and Data for each service is found in their respective folders under `services/`
- Custom scripts are found in the `scripts/` folder with their respective data collection in the `data/` folder

## Services
- Adguard Home
- Grafana
- Prometheus
- Node Exporter
- Promtail
- Loki
- Telegraf
- InfluxDB
- Suricata

## Requirements
- Linux (tested on Ubuntu 25.04)
- Docker CLI (or Docker Desktop)
- Plenty of time

## Setup Summary
The entire setup is based on data coming into various services and then being processed and displayed in Grafana for consumption.

### What Data is Coming In?
#### Adguard Home
- Total DNS Queries Per Second
- DNS Queries Blocked Per Second

#### Promtail + Loki
- System Logs
- Adguard DNS Query Log
- Suricata Logs

#### Prometheus + Node Exporter
- Host System Metrics

#### Telegraf + InfluxDB
- ARP Scans for network devices
- nmap scans of open ports (planned)

## Grafana Dashboards
### Home Network
This dashboard provides information about devices in the home network and their status
#### Panels
- ARP Devices
- Unknown MACs Detected
- Total DNS Queries Per Second
- DNS Queries Blocked Per Second

### Host Metrics
Features all information available from Node Exporter

* More Dashboards are under development / planning
