#!/usr/bin/env bash

ALLOWED_HOSTNAME="production"
TARGET_DIR="/mnt/shared_directory/backup"
DATABASE_NAME="application"

read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

if [[ $ALLOWED_HOSTNAME == `hostname` ]]; then

    # Creo e/o svuoto TARGET_DIR
    mkdir -p $TARGET_DIR && rm -r $TARGET_DIR/*

    # Making partial backup of bunny's database
    xtrabackup --backup --target-dir=$TARGET_DIR --databases=$DATABASE_NAME
fi
