# Railway Deployment Guide untuk iBio

## Langkah-langkah Deploy:

### 1. Persiapan Akun Railway
- Buka https://railway.app
- Sign up dengan GitHub account
- Verifikasi email

### 2. Setup Database MySQL
- Di Railway dashboard, klik "New Project"
- Pilih "Provision MySQL"
- Copy credentials yang diberikan

### 3. Deploy Aplikasi
- Klik "New" → "GitHub Repo"
- Pilih repository ibio (fork dulu ke GitHub Paduka Alwiy)
- Railway akan auto-detect Laravel

### 4. Environment Variables
Set di Railway dashboard → Variables:

```
APP_NAME=iBio
APP_ENV=production
APP_KEY=base64:xxxxx (generate dengan: php artisan key:generate --show)
APP_DEBUG=false
APP_URL=https://your-app.railway.app

DB_CONNECTION=mysql
DB_HOST=${{MYSQL_HOST}}
DB_PORT=${{MYSQL_PORT}}
DB_DATABASE=${{MYSQL_DATABASE}}
DB_USERNAME=${{MYSQL_USER}}
DB_PASSWORD=${{MYSQL_PASSWORD}}

SESSION_DRIVER=database
CACHE_DRIVER=file
QUEUE_CONNECTION=sync

FILESYSTEM_DISK=public
```

### 5. Deploy Commands
Railway akan otomatis:
- Install composer dependencies
- Install npm dependencies
- Build assets (npm run production)
- Run migrations
- Cache config/routes/views

### 6. Buat Admin Account
Setelah deploy, jalankan di Railway CLI:
```bash
railway run php artisan admin:make "Admin Name" "admin@email.com" "password123"
```

### 7. Akses Aplikasi
- Frontend: https://your-app.railway.app
- Admin: https://your-app.railway.app/admin

## File yang Sudah Dibuat:
✅ Procfile - untuk Heroku-style deployment
✅ nixpacks.toml - untuk Railway Nixpacks builder
✅ railway.json - Railway configuration
✅ nginx.conf - Nginx configuration

## Estimasi Biaya:
- Free tier: $5 credit/bulan
- Cukup untuk testing dan low traffic
- Upgrade jika traffic tinggi

## Troubleshooting:
- Jika migration gagal: cek DB credentials
- Jika 500 error: set APP_DEBUG=true temporary
- Jika assets tidak load: run `php artisan storage:link`
