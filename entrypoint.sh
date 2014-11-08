#!/bin/bash
set -e 

gpasswd -a www-data nagios
mkdir -p /var/run/icinga/cmd
chown -R nagios:nagios /var/run/icinga
chown -R nagios:www-data /var/run/icinga/cmd
chmod g+rwx /var/run/icinga/cmd
exec "$@"