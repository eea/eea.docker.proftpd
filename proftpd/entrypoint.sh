#!/bin/bash
set -e

sed "s#SERVERNAME#$SERVERNAME#g" -i /etc/proftpd/proftpd.conf
sed "s#DEFAULTROOT#$DEFAULTROOT#g" -i /etc/proftpd/proftpd.conf
sed "s#LDAPSERVER#$LDAPSERVER#g" -i /etc/proftpd/proftpd.conf

sed "s#SERVERADMIN#$SERVERADMIN#g" -i /etc/proftpd/proftpd.conf
sed "s#LDAPGENERATEHOMEDIRPREFIX#$LDAPGENERATEHOMEDIRPREFIX#g" -i /etc/proftpd/proftpd.conf
sed "s#SERVERADMIN#$SERVERADMIN#g" -i /etc/proftpd/proftpd.conf

sed "s#TLSCACERTIFICATEPATH#$TLSCACERTIFICATEPATH#g" -i /etc/proftpd/proftpd.conf
sed "s#RSACERTIFICATEFILE#$RSACERTIFICATEFILE#g" -i /etc/proftpd/proftpd.conf
sed "s#TLSCACERTIFICATEKEYFILE#$TLSCACERTIFICATEKEYFILE#g" -i /etc/proftpd/proftpd.conf

