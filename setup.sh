#!/bin/bash

# Auto Setup Script untuk Deploy iBio - Paduka Alwiy

echo "🚀 Starting iBio Setup for Paduka Alwiy..."

# 1. Install dependencies
echo "📦 Installing Composer dependencies..."
composer install --optimize-autoloader --no-dev

echo "📦 Installing NPM dependencies..."
npm install

# 2. Setup environment
if [ ! -f .env ]; then
    echo "⚙️ Creating .env file..."
    cp .env.example .env
fi

# 3. Generate app key
echo "🔑 Generating application key..."
php artisan key:generate --force

# 4. Build assets
echo "🎨 Building frontend assets..."
npm run production

# 5. Run migrations
echo "🗄️ Running database migrations..."
php artisan migrate --force

# 6. Create admin account for Paduka Alwiy
echo "👤 Creating admin account for Paduka Alwiy..."
php artisan admin:make "Paduka Alwiy" "alwismith76@gmail.com" "alwi313"

# 7. Cache optimization
echo "⚡ Optimizing cache..."
php artisan config:cache
php artisan route:cache
php artisan view:cache

# 8. Storage link
echo "🔗 Creating storage link..."
php artisan storage:link

echo "✅ Setup completed successfully!"
echo ""
echo "📋 Admin Login Details:"
echo "   Email: alwismith76@gmail.com"
echo "   Password: alwi313"
echo "   Admin URL: /admin"
echo ""
echo "🎉 iBio is ready for Paduka Alwiy!"
