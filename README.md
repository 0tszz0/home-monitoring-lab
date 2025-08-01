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

## Grafana Data Sources
Go to Data Sources in Grafana and Add New Source

- Prometheus : `http://prometheus:9090`
- Loki : `http://loki:3100`
- InfluxDB : `http://influxdb:8086`
In the Database section, input the names of your DB, DB User and DB Password

## Grafana Dashboards
### Host Metrics
Import a new Dashboard with ID 1860 and use Prometheus as the data source
