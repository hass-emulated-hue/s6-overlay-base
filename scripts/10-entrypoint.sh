#!/usr/bin/env bashio
# ==============================================================================
# Hass.io Addon: Emulated Hue
# This file serves as the entrypoint for Emulated Hue
# ==============================================================================


if bashio::fs.file_exists '/data/options.json'; then

  if bashio::config.has_value 'data'; then
      echo DATA_DIR=$(bashio::config 'data')
  fi

  if bashio::config.has_value 'token'; then
      echo HASS_TOKEN=$(bashio::config 'token')
  fi

  if bashio::config.has_value 'url'; then
      echo HASS_URL=$(bashio::config 'url')
  fi

  if bashio::config.has_value 'verbose'; then
      echo VERBOSE=$(bashio::config 'verbose')
  fi

fi

if bashio::fs.file_exists '/scripts/20-install.sh'; then
  bash /scripts/20-install.sh
fi

bashio::log.info "Starting Emulated Hue..."
python3 -m emulated_hue
