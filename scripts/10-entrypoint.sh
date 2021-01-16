#!/usr/bin/env bashio
# ==============================================================================
# Hass.io Addon: Emulated Hue
# This file serves as the entrypoint for Emulated Hue
# ==============================================================================


if bashio::fs.file_exists '/data/options.json'; then

  if bashio::config.has_value 'data'; then
      export DATA_DIR=$(bashio::config 'data')
  fi

  if bashio::config.has_value 'http_port'; then
      export HTTP_PORT=$(bashio::config 'http_port')
  fi

  if bashio::config.has_value 'https_port'; then
      export HTTPS_PORT=$(bashio::config 'https_port')
  fi

  if bashio::config.has_value 'token'; then
      export HASS_TOKEN=$(bashio::config 'token')
  fi

  if bashio::config.has_value 'url'; then
      export HASS_URL=$(bashio::config 'url')
  fi

  if bashio::config.has_value 'verbose'; then
      export VERBOSE=$(bashio::config 'verbose')
  fi

fi

if bashio::fs.file_exists '/scripts/20-install.sh'; then
  . /scripts/20-install.sh
fi

bashio::log.info "Starting Emulated Hue..."
python3 -m emulated_hue
