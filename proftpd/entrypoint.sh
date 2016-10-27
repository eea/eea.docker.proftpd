#!/bin/bash
set -e

sh /create_ssl_files.sh

echo "$USERS" > /etc/proftpd/users
chmod o-rwx /etc/proftpd/users

exec proftpd -nc /etc/proftpd/proftpd.conf "$@"
