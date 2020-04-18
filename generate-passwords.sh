#!/bin/bash

function generatePassword() {
    openssl rand -hex 16
}

MARIADB_ROOT_PASSWORD=$(generatePassword)
MARIADB_NEXTCLOUD_PASSWORD=$(generatePassword)

sed -i.bak \
    -e "s#MARIADB_ROOT_PASSWORD=.*#MARIADB_ROOT_PASSWORD=${MARIADB_ROOT_PASSWORD}#g" \
    -e "s#MARIADB_NEXTCLOUD_PASSWORD=.*#MARIADB_NEXTCLOUD_PASSWORD=${MARIADB_NEXTCLOUD_PASSWORD}#g" \
    "$(dirname "$0")/.env"