---
    
    - name: 1. install Apache
      yum: name=httpd2 state=present

    - name: 2. install PHP module for Apache
      yum: name=libapache2-mod-php5 state=present

    - name: 3. start Apache
      service: name=apache2 state=running enabled=yes
