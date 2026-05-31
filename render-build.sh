#!/bin/bash

# Render.com Build Script for iBio - Paduka Alwiy

set -o errexit

echo "🚀 Starting build for Paduka Alwiy..."

# Install PHP dependencies
echo "📦 Installing Composer dependencies..."
composer install --no-dev --optimize-autoloader

# Install Node dependencies
echo "📦 Installing NPM dependencies..."
npm install

# Build frontend assets
echo "🎨 Building frontend assets..."
npm run production

echo "✅ Build completed successfully!"
