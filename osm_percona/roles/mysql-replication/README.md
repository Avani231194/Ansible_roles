# Ansible Role: mysql-replication

Replication of mysql master-slave

# Requirements

Mysql is pre installed on the server


# Role Variables for master and slave

       mysql_root_password: ""

       master_db_name: ""

       user_name: ""

       password: ""
       master_ip: ""

You can set the values accordingly


- Choose the destination according to your path in the file of mysql-master main.yml


# Example Playbook 

  - hosts: mysql-server

    roles:
      - mysql-server



