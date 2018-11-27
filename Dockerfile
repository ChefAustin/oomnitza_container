# Barebones Oomnitza Connector on Ubuntu
FROM ubuntu:18.04
MAINTAINER ChefAustin version 0.0.6

# Install deps
RUN apt-get update && apt-get install -y build-essential python-pip python2.7-dev python2.7 libdbus-glib-1-dev python-dbus git libsasl2-dev python-dev libldap2-dev libssl-dev unixodbc-dev && rm -rf /var/lib/apt/lists/*

# Clone repo
RUN git clone https://github.com/Oomnitza/oomnitza-connector.git

# Additional deps
RUN pip install SecretStorage==2.3.1 certifi==2017.1.23 requests==2.7.0 requests-oauthlib==0.6.2 arrow==0.8.0 suds==0.4 httplib2==0.9.2 oauth2client==4.0.0 xmltodict==0.10.2 gevent==1.2.1 unicodecsv==0.9.0 keyring==8.7 hvac==0.3.0 enum34==1.1.6 google-api-python-client==1.6.1 pychef==0.3.0 urllib3==1.10.4 python-ldap==2.4.29 pyodbc==4.0.23
