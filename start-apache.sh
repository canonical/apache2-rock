#!/bin/sh
set -e

# Source the . ./etc/apache2/envvars (empty by default)
. /etc/apache2/envvars

mkdir -p $APACHE_RUN_DIR
mkdir -p $APACHE_LOCK_DIR

chown -R $APACHE_RUN_USER:$APACHE_RUN_GROUP \
    $APACHE_RUN_DIR \
    $APACHE_LOCK_DIR

# Start Apache in the foreground
exec apache2 -k start -DFOREGROUND