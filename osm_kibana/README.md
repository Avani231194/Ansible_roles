Role Name
=========

A brief description of the role goes here.

Requirements
------------
None

Role Variables
--------------

Available variables are listed below, along with default values(see vars/mail.yml):

# vars file for kibana

elk_kibana_username: "admin"
elk_kibana_password: "admin"
Elasticsearch_ip: ""
Kibana_server_ip: ""


Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: "{{ host }}"
      roles:
         - { role: osm_kibana }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
