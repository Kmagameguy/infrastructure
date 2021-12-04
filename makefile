decrypt:
	ansible-vault decrypt vars/vault.yml

encrypt:
	ansible-vault encrypt vars/vault.yml

lint-all: ansiblelint yamllint

ansiblelint:
	ansible-lint .

yamllint:
	yamllint .

update-all:
	ansible-playbook run.yml --tags update

update-docker-images:
	ansible-playbook run.yml --tags docker
