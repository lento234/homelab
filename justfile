set export

PLAYBOOK := "playbook-setup.yml"
DRIVER := "vagrant" # or "vagrant"
DEBUG_HOSTS := "hosts_debug.ini"
VAULT := "group_vars/all/vault.yml"

# display help information
help:
    @just --list

# Run default playbook
run:
    ansible-playbook --diff -K --ask-vault-password {{ PLAYBOOK }}

# Dry-run default playbook
dry-run:
    ansible-playbook --diff --check -vv -K --ask-vault-password {{ PLAYBOOK }} -i {{ DEBUG_HOSTS }}

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

# Test inside the local development server
test:
    #!/usr/bin/env bash
    if [ $DRIVER == "docker" ]; then
        molecule test
    else
        ansible-playbook --diff -v -K --ask-vault-password {{ PLAYBOOK }} -i {{ DEBUG_HOSTS }}
    fi

# Destroy the local development server
destroy:
    #!/usr/bin/env bash
    if [ $DRIVER == "docker" ]; then
        molecule destroy
    elif [ $DRIVER == "vagrant" ]; then
        vagrant destroy
    fi

# Edit the secret vault file
vault:
    ansible-vault edit {{ VAULT }}
