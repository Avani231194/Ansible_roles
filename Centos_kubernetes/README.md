# Centos_kubernetes
This repo controls the Ansible Role for Kubernetes on Centos.

# Role Name

Centos_Kubernetes: setups kubernetes on Centos Server with Flannel over docker.

# Requirements

None

# Role Variables

Docker was setup using [Default/Variables](https://github.com/opstreeansible/Centos_kubernetes/blob/master/docker/defaults/main.yml).
ETCD was setup using [Variables](https://github.com/opstree-ansible/Centos_kubernetes/blob/master/etcd/defaults/main.yml)
Master Node was setup using [Variables](https://github.com/opstree-ansible/Centos_kubernetes/blob/master/master/defaults/main.yml)
Minion Node was setup using [Variables](https://github.com/opstree-ansible/Centos_kubernetes/blob/master/minion/defaults/main.yml)
Final Configuration of Flannel & Docker was done using [Defaults/Varianles](https://github.com/opstree-ansible/Centos_kubernetes/blob/master/post_config/defaults/main.yml)


# Dependencies

None.

# Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
- hosts: "{{ host }}"
  roles:
     - { role: Centos_Kubernetes }
```

# License

 BSD

# Author Information

None
