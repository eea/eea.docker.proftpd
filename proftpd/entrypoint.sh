#!/bin/bash
set -e

update_proftpd_setting() {
  conffile="$1"
  setting="$2"
  value="$3"
  sed -i -e 's#^[ \t]*'"$setting"'[ \t].*$#'"$setting $value"'#' "$conffile"
}

[ -n "$PASSIVE_PORTS" ] && \
  update_proftpd_setting /etc/proftpd/proftpd.conf \
  PassivePorts "${PASSIVE_PORTS//-/ }"

mkdir -p /var/ssl
cp /ssl/*.key /var/ssl
cp /ssl/*.crt /var/ssl

chmod -R 755 $TLSCACERTIFICATEPATH
chmod -R 644 $TLSCACERTIFICATEPATH/*
chown -R root.root $TLSCACERTIFICATEPATH

echo "$ACCESSRIGHTS" > /etc/proftpd/conf.d/access_rights.conf

echo "$USERS" > /etc/proftpd/users
chmod o-rwx /etc/proftpd/users

exec proftpd -nc /etc/proftpd/proftpd.conf "$@"
