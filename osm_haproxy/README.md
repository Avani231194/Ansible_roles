osm_haproxy
==========================

A playbook building high availability Load Balancer with HAProxy.

## Overview

It will install high availability Load Balancer with HAProxy and keepalived.
You can customize it by edit vars file.

## Usage

- Edit vars/main.yml

- Install to remote server.

Edit `ansible_hosts`.

```
default ansible_ssh_host=xxx.xxx.xxx.xxx ansible_ssh_port=22
```

Run playbook.

```bash
ansible-playbook site.yml -i ansible_hosts
```

## vars

```# haproxy settings.
haproxyUser: haproxy
haproxyGroup: haproxy

# Frontend settings.
haproxyFrontendName: 'main'
haproxyFrontendPort: "8090"
bindPort: '443'
backend: "app"	

# stats settings.
statsPort: "5000"
statsAdminUser: "admin"
statsAdminPassword: "lybrate@123"
statsURI: "/haproxy_stats"

# Backend settings.

sslCertPath: "sslCertPath"
loadBalancingAlgorithm: "roundrobin"
healthCheckProto: "HTTPS"
healthCheckPort: "8443"
modeVar: "http"

# Backend servers.
appName1: "phoenix1"
host1: "192.168.0.54"
appName2: "phoenix2"
host2: "192.168.0.99"
appName3: "phoenix3"
host3: "192.169.0.88"
hostPort1: "8443"
healthCheckInterval: "12000"
fallValue: "7"
riseValue: "2
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
