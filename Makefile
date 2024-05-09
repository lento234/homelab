.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

PLAYBOOK=playbook.yml
HOSTS=hosts.ini
VAULT=group_vars/all/vault.yml
VAULT_PASSWORD_FILE=pass.key

.PHONY: run
run: ## Run default playbook run
	ansible-playbook --diff -K --vault-password-file $(VAULT_PASSWORD_FILE) $(PLAYBOOK)

.PHONY: dry-run
dry-run: ## Dry-run default playbook
	ansible-playbook --diff --check -vv -K --vault-password-file $(VAULT_PASSWORD_FILE) $(PLAYBOOK) -i $(HOSTS)

.PHONY: ping
ping: ## Ping all hosts
	ansible all --vault-password-file $(VAULT_PASSWORD_FILE) -m ping

.PHONY: vault
vault: ## Edit the secret vault file vault
	ansible-vault edit --vault-password-file $(VAULT_PASSWORD_FILE) $(VAULT)


.PHONY: vault-create
vault-create: ## Create the secret vault file vault
	ansible-vault create --vault-password-file $(VAULT_PASSWORD_FILE) $(VAULT)

.PHONY: pre-commit
pre-commit: ## Run pre-commit on all files
	pre-commit run --all-files
