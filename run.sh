#!/bin/bash

# Load configuration options passed by Home Assistant
NEXTDNS_CONFIG_ID=$(bashio::config 'config_id')
LISTEN=$(bashio::config 'listen')
CACHE_SIZE=$(bashio::config 'cache_size')

# Start the NextDNS client with the user-provided options
nextdns run \
    --config $NEXTDNS_CONFIG_ID \
    --listen ${LISTEN:-"127.0.0.1:53"} \
    --cache-size ${CACHE_SIZE:-"10MB"}
