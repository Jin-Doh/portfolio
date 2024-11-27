#!/bin/bash

certbot certonly --webroot -w /var/www/certbot -d kyungho.info --email hw8kv76j4j@privaterelay.appleid.com --agree-tos --non-interactive

# Reload Nginx to apply the renewed certificate
nginx -s reload