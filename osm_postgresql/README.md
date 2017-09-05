Role Name
=========

PostgreSQL, or Postgres, is a relational database management system that provides an implementation of the SQL querying language. It is a popular choice for many small and large projects and has the advantage of being standards-compliant and having many advanced features like reliable transactions and concurrency without read locks.

Requirements
------------
To install Postgresql in Centos6 first we need to add Postgresql repo.

Role Variables
--------------
We used below metion variable in our role only for Centos 6 version

* version
* architecuture

So you to define like below example and varible entries in defaults & vars directory or us can pass your avrible useing exata-argus ansible-playbook site.yml -e "version=x.x,architecture=xYZ.NM"

Example--

version: 9.6
architecuture: x86_64  

Dependencies
------------

NA

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - Postgresql

License
-------

XXXXX

Author Information
------------------

Ankur Verma
Company- OpsTree Solutions
