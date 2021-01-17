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

if [ -n "${HTTP_PORT}" ]; then
  echo ${HTTP_PORT} > /var/run/s6/container_environment/HTTP_PORT
fi

if [ -n "${HTTPS_PORT}" ]; then
  echo ${HTTPS_PORT} > /var/run/s6/container_environment/HTTPS_PORT
fi

if [ -n "${HASS_TOKEN}" ]; then
  echo ${HASS_TOKEN} > /var/run/s6/container_environment/HASS_TOKEN
fi

if [ -n "${HASS_URL}" ]; then
  echo ${HASS_URL} > /var/run/s6/container_environment/HASS_URL
fi

if [ -n "${VERBOSE}" ]; then
  echo ${VERBOSE} > /var/run/s6/container_environment/VERBOSE
fi
