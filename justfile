playbook := "playbooks/maintain.yml"

# default recipe to display help information
default:
    @just --list

# Run default playbook
run:
    ansible-playbook --diff -K {{playbook}}

# Dry-run default playbook
dry-run:
    ansible-playbook --diff --check -vv -K {{playbook}}

# Ping all hosts
ping:
    ansible all -m ping

# Run pre-commit on all files
pre-commit:
    pre-commit run --all-files

# Start a local development server
vagrant-start:
    vagrant up

# Pause the local development server
vagrant-pause:
    vagrant suspend

# Stop the local development server
vagrant-stop:
    vagrant halt

# Destroy the local development server
vagrant-clean:
    vagrant destroy
