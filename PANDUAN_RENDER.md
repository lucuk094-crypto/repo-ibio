# Panduan Deploy ke Render.com - Paduka Alwiy

## 🎯 Kenapa Render.com?

- ✅ **100% GRATIS** selamanya (bukan trial!)
- ✅ Support Laravel + MySQL
- ✅ 750 jam/bulan gratis
- ✅ Auto-deploy dari GitHub
- ✅ **TIDAK PERLU KARTU KREDIT**
- ✅ Setup mudah 10 menit

---

## 🚀 Langkah Deploy (10 menit):

### STEP 1: Push File Baru ke GitHub (2 menit)

File baru yang sudah saya buat:
- ✅ `render.yaml` - Render config
- ✅ `Dockerfile.render` - Docker config
- ✅ `render-build.sh` - Build script
- ✅ `render-start.sh` - Start script

**Paduka Alwiy** jalankan:
```bash
cd ~/ibio
git add render.yaml Dockerfile.render render-build.sh render-start.sh
git commit -m "Add Render.com deployment config"
git push paduka master
```

---

### STEP 2: Buat Akun Render (2 menit)

1. **Buka**: https://render.com
2. **Sign Up** dengan GitHub
3. **Authorize Render** untuk akses repo
4. **Verifikasi email**: Cek alwismith76@gmail.com
5. **TIDAK PERLU** isi payment method!

---

### STEP 3: Deploy dari GitHub (5 menit)

#### A. Create Web Service:
1. Di Render dashboard, klik **"New +"**
2. Pilih **"Web Service"**
3. Connect repository: **lucuk094-crypto/repo-ibio**
4. Klik **"Connect"**

#### B. Configure Service:
- **Name**: `ibio-paduka-alwiy`
- **Region**: `Singapore` (paling dekat)
- **Branch**: `master`
- **Runtime**: `Docker`
- **Instance Type**: **Free**

#### C. Environment Variables:
Klik "Advanced" dan tambah:

```env
APP_NAME=iBio
APP_ENV=production
APP_DEBUG=false
APP_KEY=base64:GENERATE_NANTI
SESSION_DRIVER=database
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
FILESYSTEM_DISK=public
```

#### D. Create MySQL Database:
1. Klik **"New +"** lagi
2. Pilih **"MySQL"**
3. Name: `ibio-mysql`
4. Database: `ibio`
5. User: `ibio_user`
6. Region: `Singapore`
7. Plan: **Free**
8. Klik **"Create Database"**

#### E. Connect Database ke Web Service:
1. Buka web service `ibio-paduka-alwiy`
2. Tab **"Environment"**
3. Tambah variable:
   - Key: `DATABASE_URL`
   - Value: Copy dari MySQL database (Internal Connection String)

#### F. Deploy:
1. Klik **"Create Web Service"**
2. Render akan auto-deploy (~5-10 menit)
3. Monitor di tab **"Logs"**

---

### STEP 4: Generate APP_KEY (1 menit)

Setelah deploy selesai:

1. Buka **"Shell"** tab di Render
2. Jalankan:
   ```bash
   php artisan key:generate --show
   ```
3. Copy hasilnya (format: `base64:xxxxx...`)
4. Update environment variable `APP_KEY`
5. Render akan auto-redeploy

---

### STEP 5: Login Admin (1 menit)

Setelah deploy selesai:

- **URL**: https://ibio-paduka-alwiy.onrender.com/admin
- **Email**: alwismith76@gmail.com
- **Password**: alwi313

---

## 📊 Spesifikasi Free Tier Render:

- **RAM**: 512 MB
- **CPU**: Shared
- **Storage**: 1 GB
- **Bandwidth**: 100 GB/bulan
- **Uptime**: 750 jam/bulan
- **Database**: MySQL 1 GB storage
- **Auto-sleep**: Setelah 15 menit tidak ada traffic (auto-wake saat ada request)

---

## 🆚 Perbandingan dengan Railway:

| Feature | Render.com | Railway |
|---------|-----------|---------|
| **Free Tier** | ✅ Permanen | ❌ Trial habis |
| **Kartu Kredit** | ❌ Tidak perlu | ✅ Perlu |
| **MySQL** | ✅ Gratis | ✅ Gratis |
| **Auto-deploy** | ✅ Ya | ✅ Ya |
| **Setup** | 10 menit | 10 menit |

---

## 🐛 Troubleshooting:

**Deploy Gagal?**
- Cek Render logs
- Pastikan Dockerfile.render ada
- Pastikan DATABASE_URL sudah di-set

**Admin Tidak Bisa Login?**
- Email: alwismith76@gmail.com
- Password: alwi313
- Tunggu 1-2 menit setelah deploy selesai

**App Sleep?**
- Free tier auto-sleep setelah 15 menit idle
- Auto-wake saat ada request (30 detik pertama lambat)
- Upgrade ke paid jika butuh always-on

**500 Error?**
- Set APP_DEBUG=true temporary
- Cek Render logs
- Pastikan APP_KEY sudah di-generate

---

## ✅ Checklist Paduka Alwiy:

- [ ] Push file Render ke GitHub
- [ ] Buat akun Render.com
- [ ] Verifikasi email
- [ ] Create Web Service
- [ ] Create MySQL Database
- [ ] Connect database
- [ ] Set environment variables
- [ ] Deploy
- [ ] Generate APP_KEY
- [ ] Login admin dashboard

---

## 🎉 Hasil Akhir:

- ✅ iBio live di: https://ibio-paduka-alwiy.onrender.com
- ✅ Admin dashboard: https://ibio-paduka-alwiy.onrender.com/admin
- ✅ MySQL database ready
- ✅ Admin account Paduka Alwiy ready
- ✅ 100% GRATIS selamanya!

---

**Status**: ✅ Ready to Deploy
**Platform**: Render.com (FREE)
**Prepared for**: Paduka Alwiy
**Date**: 2026-05-31 12:26 WIB
