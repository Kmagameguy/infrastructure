decrypt:
	ansible-vault decrypt vars/vault.yml

encrypt:
	ansible-vault encrypt vars/vault.yml

update-all:
	ansible-playbook run.yml --tags update

update-docker-images:
	ansible-playbook run.yml --tags docker
