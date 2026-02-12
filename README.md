# CONFIGURATION PROMETHEUS, GRAFANA, & NODE EXPORTER

## Information 
This repository contains the basic configurations for Prometheus, Grafana, and Node Exporter for system monitoring. These configurations use Docker Compose as a tool to run the applications.

## Type 
- [Red Hat Based Distro](RHEL) this configurations is for system with Red Hat based distro such as Red Hat Enterprise Linux, Rocky Linux and Alma Linux.
- [Debian Based Distro](debian) this configurations is for system with Debian based distro such as Debian and Ubuntu server.

if you're a newbie learning about container i suggest you using Debian base distro as the starting point.

## Instructions

Make sure before you use this configurations Docker already installed in your machine
For tutorial installing Docker you can go to the [Docker Official Documentations](https://docs.docker.com/engine/install/)

### Debian 
- Clone the Repository https://github.com/mirwanasikin/monitoring_tool. 
- `cd` into Debian and look for the file with name `compose.yaml`
- Inside the directory do `docker compose up -d`
- Make sure all the container are running by typing `docker ps`
- After the container is running open your browser and type `http://localhost:9090/targets` if you're using vm go to `http://IP_VM:9090:targets` make sure Prometheus and Node Exporter are up 
- Then go to `http://localhost:3000` or `http://IP_VM:3000` to go into Grafana menu.
- Inside Grafana menu go search data source and find Prometheus. 
- When the Prometheus asking for url just type `http://prometheus:9090`
- save and test. 
- Go into the dashboard, choose add dashboard and choose import.
- import 1860 and okay 
- Congratulations you already install Prometheus, Grafana and Node Exporter into your machine using container.

### RHEL 
- Clone the Repository https://github.com/mirwanasikin/monitoring_tool. 
- Unlike Debian, this Docker-based installation requires installing Node Exporter on the host. You can read more about this in the [official Prometheus Documentations](https://prometheus.io/docs/guides/node-exporter/).
- `cd` into RHEL and look for the file with name `compose.yaml`
- Inside the directory do `docker compose up -d`
- Make sure all the container are running by typing `docker ps`
- After the container is running open your browser and type `http://localhost:9090/targets` if you're using vm go to `http://IP_VM:9090:targets` make sure Prometheus and Node Exporter are up 
- Then go to `http://localhost:3000` or `http://IP_VM:3000` to go into Grafana menu.
- Inside Grafana menu go search data source and find Prometheus. 
- When the Prometheus asking for url just type `http://localhost:9090` or if you're using VM use `http://IP_VM:9090` 
- save and test. 
- Go into the dashboard, choose add dashboard and choose import.
- import 1860 and okay 
- Congratulations you already install Prometheus, Grafana and Node Exporter into your machine using container.


