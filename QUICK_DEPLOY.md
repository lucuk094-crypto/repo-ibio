# Quick Deploy Guide - Paduka Alwiy

## 🎯 Langkah Cepat Deploy:

### 1. Push ke GitHub (5 menit)
```bash
# Di terminal, jalankan:
git add .
git commit -m "Setup deployment for Paduka Alwiy"

# Fork dulu repo di GitHub, lalu:
git remote add myfork https://github.com/[username-paduka-alwiy]/ibio.git
git push myfork master
```

### 2. Deploy ke Railway (3 menit)
1. Buka: https://railway.app
2. Login dengan GitHub
3. Klik "New Project"
4. Pilih "Deploy from GitHub repo"
5. Pilih repository ibio fork Paduka Alwiy
6. Klik "Add variables" dan paste ini:

```
APP_NAME=iBio
APP_ENV=production
APP_DEBUG=false
SESSION_DRIVER=database
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
FILESYSTEM_DISK=public
```

7. Klik "Add MySQL" dari menu
8. Railway akan auto-connect database
9. Klik "Deploy"

### 3. Generate APP_KEY (1 menit)
Setelah deploy selesai:
1. Buka tab "Settings" di Railway
2. Scroll ke "Variables"
3. Tambah variable baru:
   - Key: `APP_KEY`
   - Value: Generate dengan command ini di Railway CLI atau biarkan kosong dulu

### 4. Login Admin (1 menit)
- URL: https://[your-app].railway.app/admin
- Email: alwismith76@gmail.com
- Password: alwi313

## ✅ Yang Sudah Auto-Setup:
- ✅ Database migrations
- ✅ Admin account Paduka Alwiy
- ✅ Cache optimization
- ✅ Storage link
- ✅ All dependencies

## 🎉 Total Waktu: ~10 menit

---
**Catatan**: Admin account otomatis dibuat saat first deploy!
