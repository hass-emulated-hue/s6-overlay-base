#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Emulated Hue
# This file defines environment variables based on user specified config options
# This prioritizes options.json over native environment variables
# ==============================================================================


if bashio::fs.file_exists '/data/options.json'; then

  if bashio::config.has_value 'data'; then
      echo $(bashio::config 'data') > /var/run/s6/container_environment/DATA_DIR
  fi

  if bashio::config.has_value 'token'; then
      echo $(bashio::config 'token') > /var/run/s6/container_environment/HASS_TOKEN
  fi

  if bashio::config.has_value 'url'; then
      echo $(bashio::config 'url') > /var/run/s6/container_environment/HASS_URL
  fi

  if bashio::config.has_value 'verbose'; then
      echo $(bashio::config 'verbose') > /var/run/s6/container_environment/VERBOSE
  fi

fi