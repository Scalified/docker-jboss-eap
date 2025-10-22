#!/bin/bash

set -e

JBOSS_CONFIGS_DIR="${JBOSS_CONFIGS_DIR:-/etc/jboss/configs}"

for config in "$JBOSS_CONFIGS_DIR"/*; do
    if [ -f "$config" ]; then
        cp -rf "$config" "$JBOSS_HOME/standalone/configuration"
        echo "[INFO]: Copied '$config' config file"
    fi
done

$JBOSS_HOME/bin/standalone.sh

