#!/bin/bash
# ==============================================================================
# Community Hass.io Add-ons: Emulated Hue
# This file adds native environment variables so a single image can be used with or without hass.io
# ==============================================================================

mkdir -p /var/run/s6/container_environment

# Reads all variables
if [ -n "${DATA_DIR}" ]; then
  echo ${DATA_DIR} > /var/run/s6/container_environment/DATA_DIR
fi

if [ -n "${HASSIO_TOKEN}" ]; then
  echo ${HASSIO_TOKEN} > /var/run/s6/container_environment/HASSIO_TOKEN
fi

if [ -n "${HASSIO_URL}" ]; then
  echo ${HASSIO_URL} > /var/run/s6/container_environment/HASSIO_URL
fi

if [ -n "${VERBOSE}" ]; then
  echo ${VERBOSE} > /var/run/s6/container_environment/VERBOSE
fi
