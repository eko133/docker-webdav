#!/bin/bash

htpasswd -cb /etc/apache2/webdav.password $USERNAME $PASSWORD
chown root:www-data /etc/apache2/webdav.password
chmod 640 /etc/apache2/webdav.password

rm -f /var/run/apache2.pid

apache2 -D FOREGROUND
