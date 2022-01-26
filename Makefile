all:
	ansible-playbook --diff playbook.yml
dry-run:
	ansible-playbook --diff --check -vv playbook.yml
ping:
	ansible all -m ping
pre-commit:
	pre-commit run --all-files
vagrant-start:
	vagrant up
vagrant-pause:
	vagrant suspend
vagrant-stop:
	vagrant halt
vagrant-clean:
	vagrant destroy
