#!/bin/bash
# This scripts starts the rails app  production server

echo "precompiling everything for production environment"
RAILS_ENV=production rails assets:precompile

echo "changing file permission for tmp and public folder"
chmod -R 777 tmp
chmod -R 777 public
echo "chaninging ownership and assigning to user nginx for root folder"
chown -R nginx:nginx  .
echo "\n"