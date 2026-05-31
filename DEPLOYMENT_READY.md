# iBio Deployment - Ready for Paduka Alwiy

## ✅ Setup Selesai!

### 📁 File yang Sudah Dibuat:
1. ✅ **Procfile** - Railway/Heroku deployment
2. ✅ **nixpacks.toml** - Railway Nixpacks config
3. ✅ **railway.json** - Railway configuration
4. ✅ **nginx.conf** - Nginx web server
5. ✅ **setup.sh** - Auto setup script
6. ✅ **AdminSeeder.php** - Database seeder untuk admin
7. ✅ **RAILWAY_DEPLOY.md** - Panduan deployment lengkap

### 👤 Admin Account Paduka Alwiy:
- **Email**: alwismith76@gmail.com
- **Password**: alwi313
- **Admin URL**: /admin

### 🚀 Cara Deploy ke Railway:

#### Opsi 1: Deploy Manual (Recommended)
1. Fork repository ke GitHub Paduka Alwiy
2. Push semua file config:
   ```bash
   git add .
   git commit -m "Add deployment config for Paduka Alwiy"
   git push origin master
   ```
3. Buka https://railway.app
4. Sign up dengan GitHub
5. New Project → Deploy from GitHub repo
6. Pilih repository ibio
7. Add MySQL database
8. Set environment variables (lihat RAILWAY_DEPLOY.md)
9. Deploy otomatis!

#### Opsi 2: Deploy dengan Railway CLI
```bash
# Install Railway CLI
npm install -g @railway/cli

# Login
railway login

# Init project
railway init

# Add MySQL
railway add

# Deploy
railway up
```

### ⚙️ Environment Variables yang Harus Diset:

```env
APP_NAME=iBio
APP_ENV=production
APP_KEY=base64:xxxxx
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

### 🔧 Setelah Deploy:

1. **Generate APP_KEY**:
   ```bash
   railway run php artisan key:generate --show
   ```
   Copy hasilnya dan set di environment variables

2. **Verifikasi Admin Account**:
   Admin sudah otomatis dibuat saat migration
   Login di: https://your-app.railway.app/admin

3. **Test Aplikasi**:
   - Frontend: https://your-app.railway.app
   - Register user baru
   - Buat bio link
   - Test semua fitur

### 📊 Fitur yang Siap:
- ✅ Bio link generator
- ✅ Admin dashboard (Filament)
- ✅ Multiple link types
- ✅ Metrics & analytics
- ✅ Themes
- ✅ Social links
- ✅ OAuth Google login

### 💰 Estimasi Biaya Railway:
- Free tier: $5 credit/bulan
- Cukup untuk 500-1000 users/bulan
- Upgrade jika traffic tinggi

### 🐛 Troubleshooting:
- **500 Error**: Set APP_DEBUG=true, cek logs
- **Migration Failed**: Cek DB credentials
- **Assets Not Loading**: Run `php artisan storage:link`
- **Admin Can't Login**: Cek email/password di database

### 📞 Support:
Jika ada masalah, cek:
1. Railway logs
2. Laravel logs di storage/logs/
3. Database connection

---

**Status**: ✅ Ready to Deploy
**Prepared for**: Paduka Alwiy
**Date**: 2026-05-31
