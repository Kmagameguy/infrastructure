# Infrastructure

## Requirements

- local ssh config

## Setup

1. Run `bin/bootstrap` to install dependencies like `python3` & `ansible`
1. Run `bin/setup` to prepare some settings:
  - Sets up a pre-commit hook to help prevent accidentally committing an unencrypted vault.yml file
  - Sets up the vault.yml password so on-the-fly encryption/decryption works without user interaction (you will need to supply the correct vault password for this to work)
1. Manually place `vault.yml` into the `vars/` folder; you do have this backed up somewhere safe, don't you? 😉️

## Deploying

Run any of the included `make` commands (e.g. `make update-all`) OR use ansible-playbook to call specific plays.