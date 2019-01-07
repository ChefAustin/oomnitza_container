# Barebones Oomnitza Connector on Ubuntu
FROM ubuntu:18.04
MAINTAINER ChefAustin version 0.0.8

# Install deps
RUN apt-get update && apt-get install -y build-essential python-pip python2.7-dev python2.7 libdbus-glib-1-dev python-dbus git libsasl2-dev python-dev libldap2-dev libssl-dev unixodbc unixodbc-dev && rm -rf /var/lib/apt/lists/*

# Clone repo
RUN git clone https://github.com/Oomnitza/oomnitza-connector.git

# Additional deps
RUN pip install SecretStorage==2.3.1 arrow==0.8.0 cachetools==3.0.0 certifi>=2018.11.29 chardet==3.0.4 enum34==1.1.6 gevent==1.2.1 google-api-python-client==1.7.7 google-auth==1.6.2 google-auth-httplib2==0.0.3 greenlet==0.4.15 httplib2==0.12.0 hvac==0.3.0 idna==2.8 keyring==8.7 oauth2client==4.1.3 oauthlib==2.1.0 pyasn1==0.4.4 pyasn1-modules==0.2.2 PyChef==0.3.0 pyodbc==4.0.23 python-dateutil==2.7.5 python-ldap==2.4.29 requests==2.21.0 requests-oauthlib==1.0.0 rsa==4.0 six==1.12.0 suds==0.4 unicodecsv==0.9.0 uritemplate==3.0.0 urllib3==1.24.1 xmltodict==0.10.2
