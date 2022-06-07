# Infrastructure

## Requirements

- local ssh config

## Setup

1. Run `bin/bootstrap` to install dependencies like `python3`, `ansible`, linters, and the bitwarden-cli
1. Run `bin/setup` to set up the bitwarden-cli
1. Manually place `vault.yml` into the `vars/` folder; you do have this backed up somewhere safe, don't you? 😉️

## Deploying

Run any of the included `make` commands (e.g. `make update-all`) OR use ansible-playbook to call specific plays.
