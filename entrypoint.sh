#!/usr/bin/env sh

# App path exits?
if [ ! -d "/nginx" ]; then
    echo "/nginx dir not exits. Please mount or create it"
    exit 1
fi

# App path exits?
if [ ! -f "/nginx/app.conf" ]; then
    echo "/nginx/app.conf dir not exits. Please mount or create it"
    exit 1
fi

# Copy nginx app config
cp /nginx/app.conf /etc/nginx/conf.d/app.conf

# Run nginx
nginx -g "daemon off"