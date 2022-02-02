set export

PLAYBOOK := "playbook-main.yml"
DRIVER := "docker" # or "vagrant"

# display help information
help:
    @just --list

# Run default playbook
run:
    ansible-playbook --diff -K {{PLAYBOOK}}

# Dry-run default playbook
dry-run:
    ansible-playbook --diff --check -vv -K {{PLAYBOOK}}

# Ping all hosts
ping:
    ansible all -m ping

# Run pre-commit on all files
pre-commit:
    pre-commit run --all-files

# Create/start a local development server
create:
    #!/usr/bin/env bash
    if [ $DRIVER == "docker" ]; then
        molecule create
    elif [ $DRIVER == "vagrant" ]; then
        vagrant up
    fi

# Login into the local development server
login:
    #!/usr/bin/env bash
    if [ $DRIVER == "docker" ]; then
        molecule login
    elif [ $DRIVER == "vagrant" ]; then
        vagrant ssh
    fi

# Destroy the local development server
destroy:
    #!/usr/bin/env bash
    if [ $DRIVER == "docker" ]; then
        molecule destroy
    elif [ $DRIVER == "vagrant" ]; then
        vagrant destroy
    fi

