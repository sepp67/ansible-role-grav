#!/bin/sh
set -e

if [ ! -f /var/www/html/user/.initialized ]; then
  echo "Initializing Grav user directory..."
  rsync -a /tmp/grav-user/ /var/www/html/user/
  touch /var/www/html/user/.initialized
fi

chown -R www-data:www-data /var/www/html/user

php-fpm -D
nginx -g "daemon off;"
