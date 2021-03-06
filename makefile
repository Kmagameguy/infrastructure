decrypt:
	ansible-vault decrypt vars/vault.yml

encrypt:
	ansible-vault encrypt vars/vault.yml

lint-all: ansiblelint yamllint

ansiblelint:
	ansible-lint

yamllint:
	yamllint -c .config/yamllint.yml .

update-all:
	ansible-playbook run.yml --tags update

update-docker-images:
	ansible-playbook run.yml --tags docker

update-minecraft:
	ansible-playbook run.yml --tags minecraft
