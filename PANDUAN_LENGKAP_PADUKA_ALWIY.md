# Panduan Lengkap Deploy untuk Paduka Alwiy

## 🎯 Yang Paduka Alwiy Perlu Lakukan:

### STEP 1: Berikan Akses GitHub (5 menit)

**Paduka Alwiy** berikan ke saya:
1. **Link repository kosong** yang sudah dibuat
2. **GitHub Personal Access Token** dengan cara:
   - Buka: https://github.com/settings/tokens
   - Klik "Generate new token (classic)"
   - Beri nama: "Railway Deploy"
   - Centang: `repo` (full control)
   - Klik "Generate token"
   - **COPY TOKEN** (hanya muncul sekali!)
   - Berikan token ke saya

**Saya akan push semua file ke repo Paduka Alwiy!**

---

### STEP 2: Setup Railway Account (3 menit)

**Paduka Alwiy** lakukan ini:

1. **Buka Railway**:
   - URL: https://railway.app
   - Klik "Login"
   - Pilih "Login with GitHub"
   - Authorize Railway

2. **Verifikasi Email**:
   - Cek email: alwismith76@gmail.com
   - Klik link verifikasi dari Railway
   - Selesai!

3. **Free Tier** (TIDAK PERLU KARTU KREDIT):
   - Railway otomatis kasih $5 credit gratis
   - Cukup untuk 500-1000 users/bulan
   - Tidak perlu payment method untuk free tier

---

### STEP 3: Deploy di Railway (5 menit)

**Paduka Alwiy** ikuti langkah ini:

1. **Create New Project**:
   - Di Railway dashboard, klik "New Project"
   - Pilih "Deploy from GitHub repo"
   - Pilih repository ibio yang sudah saya push
   - Klik "Deploy"

2. **Add MySQL Database**:
   - Di project, klik "New"
   - Pilih "Database" → "Add MySQL"
   - Railway auto-connect ke aplikasi

3. **Set Environment Variables**:
   - Klik tab "Variables"
   - Klik "RAW Editor"
   - Paste ini:

```env
APP_NAME=iBio
APP_ENV=production
APP_DEBUG=false
APP_URL=${{RAILWAY_PUBLIC_DOMAIN}}
SESSION_DRIVER=database
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
FILESYSTEM_DISK=public
```

4. **Generate APP_KEY**:
   - Tunggu deploy selesai
   - Klik tab "Settings"
   - Scroll ke bawah, klik "Generate Domain"
   - Copy domain URL
   - Buka terminal Railway (di dashboard)
   - Jalankan: `php artisan key:generate --show`
   - Copy hasilnya
   - Tambah variable baru:
     - Key: `APP_KEY`
     - Value: (paste hasil generate)

5. **Redeploy**:
   - Klik "Deploy" lagi
   - Tunggu selesai (~2-3 menit)

---

### STEP 4: Login Admin (1 menit)

Setelah deploy selesai:

1. **Buka Admin Dashboard**:
   - URL: https://[your-app].railway.app/admin
   
2. **Login dengan**:
   - Email: alwismith76@gmail.com
   - Password: alwi313

3. **Test Aplikasi**:
   - Buka homepage: https://[your-app].railway.app
   - Register user baru
   - Buat bio link
   - Test semua fitur

---

## 📊 Checklist untuk Paduka Alwiy:

### Yang Saya Butuhkan dari Paduka Alwiy:
- [ ] Link GitHub repository kosong
- [ ] GitHub Personal Access Token

### Yang Paduka Alwiy Lakukan Sendiri:
- [ ] Login ke Railway dengan GitHub
- [ ] Verifikasi email Railway
- [ ] Deploy dari GitHub repo
- [ ] Add MySQL database
- [ ] Set environment variables
- [ ] Generate APP_KEY
- [ ] Login ke admin dashboard

---

## ⏱️ Total Waktu: ~15 menit

## 💰 Biaya: GRATIS ($5 credit/bulan)

## 🎉 Hasil Akhir:
- ✅ iBio live di internet
- ✅ Admin dashboard berfungsi
- ✅ Database MySQL ready
- ✅ Paduka Alwiy bisa login sebagai admin
- ✅ User bisa register dan buat bio link

---

## 🆘 Jika Ada Masalah:

**Deploy Gagal?**
- Cek Railway logs
- Pastikan MySQL sudah connected
- Pastikan APP_KEY sudah di-set

**Admin Tidak Bisa Login?**
- Cek email/password: alwismith76@gmail.com / alwi313
- Cek database: table `admins` harus ada data

**500 Error?**
- Set APP_DEBUG=true temporary
- Cek Railway logs untuk error detail

---

**Status**: ✅ Siap Deploy
**Prepared for**: Paduka Alwiy
**Date**: 2026-05-31
**Time**: 12:07 WIB
