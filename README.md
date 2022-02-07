<div align="center">

<h1>
    <img width="500" align="center" src="assets/homelab-logo.svg">
</h1>

![Molecule CI](https://img.shields.io/github/workflow/status/lento234/homelab/CI?style=flat-square)
[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square&labelColor=000000)](#license)

***`Ansible`-based personal homelab setup.***

</div>

## Hosted services

### Server management

* [x] [homer](https://github.com/bastienwirtz/homer): A very simple static homepage for your server.
* [x] [portainer.io](https://docs.portainer.io/v/ce-2.11/) - A centralized service delivery platform for containerized apps
* [x] [Watchtower](https://containrrr.dev/watchtower) - A container-based solution for automating Docker container base image updates.
* [x] [nginx proxy manager](https://nginxproxymanager.com/guide/) - Nginx reverse proxy manager with dashboard.
* [x] [pi-hole](https://pi-hole.net/) - A black hole for internet advertisements.
* [ ] [Netdata](https://www.netdata.cloud/) - Monitor everything in real time.
* [ ] glances
### Media / storage

* [x] [plex media server](https://hub.docker.com/r/linuxserver/plex) - Organizes video, music and photos from personal media libraries.
* [ ] [nextcloud](https://github.com/nextcloud/server) - :cloud: cloud Nextcloud server, a safe home for all your data
* [ ] [photoprism](https://github.com/photoprism/photoprism) - Photos App powered by Go and Google TensorFlow :rainbow: :sparkles:
* [ ] [vaultwarden](https://github.com/dani-garcia/vaultwarden) - Alternative implementation of the Bitwarden server
## Home automation

* [ ] [home assistant](https://github.com/khuedoan/homelab): My self-hosting infrastructure, fully automated from empty disk to operating services
* [ ] IOT stack: influxdb, grafana
* [ ] Roborocks: Automated home cleaning robot


## Hardware / software stack

* [x] Raspberry Pi 4 Model B 8GB: [OKdo](https://www.okdo.com/p/okdo-raspberry-pi-4-8gb-model-b-starter-kit/)
* [x] Boot: Sandisk microSDXC 128GB
* [x] OS: Rocky Linux 8.5 [wiki](https://wiki.rockylinux.org/en/special-interest-groups/alt-arch/raspberry-pi)
* [ ] Storage (*planned*)


## Setup

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


## References

* [geerlingguy/ansible-for-devops](https://github.com/geerlingguy/ansible-for-devops) - Ansible for DevOps examples.
* [davestephens/ansible-nas](https://github.com/davestephens/ansible-nas) - Build a full-featured home server or NAS replacement with an Ubuntu box and this playbook.
* [notthebee/infra](https://github.com/notthebee/infra) - IaC for my Linux/Unix machines
* [HQarroum/awesome-iot](https://github.com/HQarroum/awesome-iot) - :robot: A curated list of awesome Internet of Things projects and resources.
* [pfalcon/awesome-smarthome](https://github.com/pfalcon/awesome-smarthome) -  Curated list of awesome SmartHome/Home Automation things (open and leaving users in control)
* [awesome-selfhosted/awesome-selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted) - A list of Free Software network services and web applications which can be hosted on your own servers
* [microsoft/IoT-For-Beginners](https://github.com/microsoft/IoT-For-Beginners) - 12 Weeks, 24 Lessons, IoT for All!
