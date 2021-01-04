#!/bin/bash
# ==============================================================================
# Community Hass.io Add-ons: Emulated Hue
# This file adds native environment variables so a single image can be used with or without hass.io
# ==============================================================================

mkdir -p /var/run/s6/container_environment

# Reads all variables
if [ -z "${DATA_DIR}" ]; then
  echo ${DATA_DIR} > /var/run/s6/container_environment/DATA_DIR
fi

if [ -z "${HASS_TOKEN}" ]; then
  echo ${HASS_TOKEN} > /var/run/s6/container_environment/HASS_TOKEN
fi

if [ -z "${HASS_URL}" ]; then
  echo ${HASS_URL} > /var/run/s6/container_environment/HASS_URL
fi

if [ -z "${VERBOSE}" ]; then
  echo ${VERBOSE} > /var/run/s6/container_environment/VERBOSE
fi
