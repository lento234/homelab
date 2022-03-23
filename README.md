<div align="center">

<h1>
    <img width="500" align="center" src="assets/homelab-logo.svg">
</h1>

![Molecule CI](https://img.shields.io/github/workflow/status/lento234/homelab/CI?style=flat-square&labelColor=black)
[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square&labelColor=000000)](#license)

![Rocky Linux](https://img.shields.io/badge/-Rocky%20Linux-%2310B981?style=for-the-badge&logo=rockylinux&logoColor=white)
![Raspberry Pi](https://img.shields.io/badge/-RaspberryPi-C51A4A?style=for-the-badge&logo=Raspberry-Pi)

***`Ansible`-based personal homelab setup.***

</div>

## Description

The project contains a set of ansible playbooks use to setup (and manage) a personal homelab infrastructure. The homelab runs on a Raspberry Pi 4 running on Rocky Linux. Currently using `nord` [theme](https://www.nordtheme.com/).

![Homepage](assets/homepage.png)

## Hosted services

### Server management

* [x] [homer](https://github.com/bastienwirtz/homer) - A very simple static homepage for your server.
* [x] [portainer.io](https://docs.portainer.io/v/ce-2.11/) - A centralized service delivery platform for containerized apps.
* [x] [Watchtower](https://containrrr.dev/watchtower) - A container-based solution for automating Docker container base image updates.
* [x] [nginx proxy manager](https://nginxproxymanager.com/guide/) - Nginx reverse proxy manager with dashboard.
* [x] [pi-hole](https://pi-hole.net/) - A black hole for internet advertisements.
* [ ] [Wireguard](https://github.com/linuxserver/docker-wireguard) - Self-hosted VPN (*optional:* or use alternative service, e.g. (OpenVPN)) or [Tailscale](https://tailscale.com/).
* [ ] [healthchecks](https://github.com/healthchecks/healthchecks) - A cron monitoring tool written in Python & Django.

## Monitoring

* [x] [Netdata](https://www.netdata.cloud/) - Monitor everything in real time.
* [x] [Glances](https://nicolargo.github.io/glances) - An *Eye* on your system.

### Media / Storage

* [x] [plex media server](https://hub.docker.com/r/linuxserver/plex) - Organizes video, music and photos from personal media libraries.
* [x] [nextcloud](https://github.com/nextcloud/server) - :cloud: cloud Nextcloud server, a safe home for all your data.
* [x] NFS - A network filesystem using the NFS protocol.
* [x] [photoprism](https://github.com/photoprism/photoprism) - Photos App powered by Go and Google TensorFlow :rainbow: :sparkles:.
* [x] [Jellyfin](https://hub.docker.com/r/linuxserver/jellyfin) - Jellyfin is a Free Software Media System that puts you in control of managing and streaming your media.
* [ ] [vaultwarden](https://github.com/dani-garcia/vaultwarden) - Alternative implementation of the Bitwarden server.
* [ ] [paperless-ng](https://github.com/jonaswinkler/paperless-ng) - A supercharged version of paperless: scan, index and archive all your physical documents.
* [ ] [rdiff](https://rdiff-backup.net/) - Reverse differential backup tool, over a network or locally (*or use similar ideas*).
* [ ] [Tiny tiny RSS](https://tt-rss.org/) - Web-based news feed (RSS/Atom) reader and aggregator
* [ ] [Code Server](https://github.com/linuxserver/docker-code-server) - Code-server is VS Code running on a remote server, accessible through the browser.

### Home automation

* [x] [home assistant](https://github.com/khuedoan/homelab) - My self-hosting infrastructure, fully automated from empty disk to operating services.
* [ ] [grocy](https://github.com/linuxserver/docker-grocy) - Grocy is a web-based self-hosted groceries & household management solution for your home.
* [ ] IOT stack: influxdb, grafana
* [ ] Roborocks: Automated home cleaning robot

## Hardware / software stack

* [x] Raspberry Pi 4 Model B 8GB: [OKdo](https://www.okdo.com/p/okdo-raspberry-pi-4-8gb-model-b-starter-kit/)
* [x] OS: Rocky Linux 8.5 [wiki](https://wiki.rockylinux.org/en/special-interest-groups/alt-arch/raspberry-pi)
* [x] Storage - Sandisk microSDXC 128GB (`/`, `ext4`)
* [x] Storage - Samsung Portable T7 Touch (`/mnt/data`, `ext4`, **NFS**)
* [ ] Storage - backup (*planned*)


## Setup

1. Use the `just` command runner to setup the homelab:

```
$ just

Available recipes:
    create     # Create/start a local development server
    destroy    # Destroy the local development server
    dry-run    # Dry-run default playbook
    help       # display help information
    login      # Login into the local development server
    ping       # Ping all hosts
    pre-commit # Run pre-commit on all files
    run        # Run default playbook
    test       # Test inside the local development server
    vault      # Edit the secret vault file
```

2. Add hosts into the `hosts.ini` file (example):

```
[homelab]
heimdall ansible_python_interpreter=/usr/libexec/platform-python
```

3. Modify group vars file `group_vars/all/vars.yml`

4. Run `just dry-run` or `just run` to deploy the infrastructure.


## References

### Homelab / Self-hosted

* [geerlingguy/ansible-for-devops](https://github.com/geerlingguy/ansible-for-devops) - Ansible for DevOps examples.
* [davestephens/ansible-nas](https://github.com/davestephens/ansible-nas) - Build a full-featured home server or NAS replacement with an Ubuntu box and this playbook.
* [notthebee/infra](https://github.com/notthebee/infra) - IaC for my Linux/Unix machines
* [awesome-selfhosted/awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted) - A list of Free Software network services and web applications which can be hosted on your own servers
* [khuedoan/homelab](https://github.com/khuedoan/homelab) - Small and power efficient self-hosting infrastructure. Fully automated from empty disk to operating services
* [abhilesh/self-hosted_docker_setups](https://github.com/abhilesh/self-hosted_docker_setups) - A collection of my docker-compose files used to setup self-hosted services on Raspberry Pi 4 running 64-bit Raspberry Pi OS

### Home automation / IOT

* [HQarroum/awesome-iot](https://github.com/HQarroum/awesome-iot) - :robot: A curated list of awesome Internet of Things projects and resources.
* [pfalcon/awesome-smarthome](https://github.com/pfalcon/awesome-smarthome) -  Curated list of awesome SmartHome/Home Automation things (open and leaving users in control)
* [microsoft/IoT-For-Beginners](https://github.com/microsoft/IoT-For-Beginners) - 12 Weeks, 24 Lessons, IoT for All!
* [frenck/awesome-home-assistant](https://github.com/frenck/awesome-home-assistant) - A curated list of amazingly awesome Home Assistant resources.
* [Hypfer/Valetudo](https://github.com/Hypfer/Valetudo) - Cloud-free control webinterface for vacuum robots
