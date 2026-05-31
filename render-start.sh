#!/bin/bash

# Render.com Start Script for iBio - Paduka Alwiy

set -o errexit

echo "🚀 Starting iBio for Paduka Alwiy..."

# Run migrations
echo "🗄️ Running database migrations..."
php artisan migrate --force --no-interaction

# Seed admin account for Paduka Alwiy
echo "👤 Creating admin account..."
php artisan db:seed --force --no-interaction

# Cache optimization
echo "⚡ Optimizing cache..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Create storage link
echo "🔗 Creating storage link..."
php artisan storage:link

# Start PHP-FPM and Nginx
echo "🌐 Starting web server..."
php-fpm -D && nginx -g "daemon off;"
