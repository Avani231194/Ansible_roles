# Ansible Role: Hostname | Ntp | Timezone | SSH

Setup Hostname | Ntp | Timezone | SSH on Linux.

## Requirements

None.

## Example Playbook

    - hosts: <server>
      roles:
        - ntp
	- timezone
	- ssh
	- hostname

