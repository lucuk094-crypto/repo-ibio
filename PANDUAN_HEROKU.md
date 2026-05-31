# Panduan Deploy ke Heroku - Paduka Alwiy

## 🎯 Kenapa Heroku?

- ✅ **100% GRATIS** (Eco Dynos)
- ✅ Deploy dari browser HP (mudah!)
- ✅ PostgreSQL gratis included
- ✅ Connect langsung dari GitHub
- ✅ **TIDAK PERLU KARTU KREDIT** untuk free tier
- ✅ 1000 jam/bulan gratis

---

## 🚀 Cara Deploy dari Browser HP (10 menit):

### STEP 1: Buat Akun Heroku (2 menit)

1. **Buka**: https://signup.heroku.com
2. Isi form:
   - First name: Paduka
   - Last name: Alwiy
   - Email: alwismith76@gmail.com
   - Country: Indonesia
   - Role: Student
   - Primary language: PHP
3. Klik **"Create Free Account"**
4. **Cek email** untuk verifikasi
5. Klik link verifikasi
6. Set password
7. Login

---

### STEP 2: Create New App (2 menit)

1. Di dashboard, klik **"New"** (kanan atas)
2. Pilih **"Create new app"**
3. Isi:
   - App name: `ibio-paduka-alwiy`
   - Region: `United States` atau `Europe`
4. Klik **"Create app"**

---

### STEP 3: Connect GitHub (1 menit)

1. Di tab **"Deploy"**
2. Deployment method: Pilih **"GitHub"**
3. Klik **"Connect to GitHub"**
4. Authorize Heroku
5. Search repository: `repo-ibio`
6. Klik **"Connect"**

---

### STEP 4: Add PostgreSQL Database (1 menit)

1. Klik tab **"Resources"**
2. Di "Add-ons", ketik: `postgres`
3. Pilih **"Heroku Postgres"**
4. Plan: **"Eco"** (gratis)
5. Klik **"Submit Order Form"**

---

### STEP 5: Set Environment Variables (2 menit)

1. Klik tab **"Settings"**
2. Scroll ke **"Config Vars"**
3. Klik **"Reveal Config Vars"**
4. Tambahkan satu per satu:

```
Key: APP_NAME
Value: iBio

Key: APP_ENV
Value: production

Key: APP_DEBUG
Value: false

Key: SESSION_DRIVER
Value: database

Key: CACHE_DRIVER
Value: file

Key: QUEUE_CONNECTION
Value: sync

Key: FILESYSTEM_DISK
Value: public
```

**CATATAN**: `DATABASE_URL` sudah otomatis di-set oleh Heroku Postgres!

---

### STEP 6: Generate APP_KEY (1 menit)

**Cara 1 - Di Termux:**
```bash
cd ~/ibio
php artisan key:generate --show
```

Copy hasilnya, lalu tambah ke Config Vars:
```
Key: APP_KEY
Value: base64:xxxxx...
```

**Cara 2 - Online Generator:**
1. Buka: https://generate-random.org/laravel-key-generator
2. Klik "Generate"
3. Copy hasilnya
4. Tambah ke Config Vars

---

### STEP 7: Deploy! (2 menit)

1. Kembali ke tab **"Deploy"**
2. Scroll ke bawah ke **"Manual deploy"**
3. Branch: `master`
4. Klik **"Deploy Branch"**
5. Tunggu 3-5 menit
6. Monitor di "Build log"

---

### STEP 8: Run Migrations (1 menit)

Setelah deploy selesai:

1. Klik **"More"** (kanan atas)
2. Pilih **"Run console"**
3. Ketik command:
   ```
   php artisan migrate --force
   ```
4. Klik **"Run"**
5. Tunggu selesai
6. Ulangi untuk seed:
   ```
   php artisan db:seed --force
   ```

---

### STEP 9: Login Admin

Buka browser:
```
https://ibio-paduka-alwiy.herokuapp.com/admin
```

Login:
- Email: **alwismith76@gmail.com**
- Password: **alwi313**

---

## 💰 BIAYA: 100% GRATIS!

### Free Tier Heroku:
- ✅ 1000 dyno hours/bulan
- ✅ PostgreSQL 1GB gratis
- ✅ Deploy unlimited
- ✅ Custom domain support
- ✅ **TIDAK PERLU KARTU KREDIT**

### Catatan:
- App sleep setelah 30 menit idle
- Auto-wake saat ada request (~10 detik)
- Cukup untuk 500-1000 users/bulan

---

## 📊 PERBANDINGAN PLATFORM:

| Platform | Status | Deploy | Kartu Kredit |
|----------|--------|--------|--------------|
| Railway | ❌ Trial habis | Browser | ✅ Perlu |
| Render | ❌ No MySQL | Browser | ❌ |
| Fly.io | ❌ Berbayar | Terminal | ✅ Perlu |
| **Heroku** | ✅ Ready | Browser | ❌ Tidak |

---

## 🆘 Troubleshooting:

**Deploy Gagal?**
- Cek Build log untuk error
- Pastikan Procfile ada di repo
- Pastikan APP_KEY sudah di-set

**Admin Tidak Bisa Login?**
- Run console: `php artisan db:seed --force`
- Cek email/password: alwismith76@gmail.com / alwi313

**500 Error?**
- Set APP_DEBUG=true temporary
- Cek Heroku logs: More → View logs

**App Sleep?**
- Normal untuk free tier
- Auto-wake saat ada request
- Upgrade ke paid jika butuh always-on

---

## ✅ Checklist Paduka Alwiy:

- [ ] Buat akun Heroku
- [ ] Verifikasi email
- [ ] Create new app
- [ ] Connect GitHub repo
- [ ] Add PostgreSQL
- [ ] Set config vars (8 variables)
- [ ] Generate APP_KEY
- [ ] Deploy branch
- [ ] Run migrations
- [ ] Run seeder
- [ ] Login admin dashboard

---

**Status**: ✅ Ready to Deploy
**Platform**: Heroku (FREE)
**Prepared for**: Paduka Alwiy
**Date**: 2026-05-31
