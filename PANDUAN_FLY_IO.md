# Panduan Deploy ke Fly.io - Paduka Alwiy

## 🎯 Kenapa Fly.io?

- ✅ **100% GRATIS** (bukan trial!)
- ✅ Support Laravel + PostgreSQL
- ✅ 3 VM gratis (256MB RAM each)
- ✅ PostgreSQL 1GB gratis
- ✅ Deploy dari terminal (mudah!)
- ✅ **TIDAK PERLU KARTU KREDIT** untuk free tier
- ✅ Always-on (tidak sleep seperti Render)

---

## 🚀 Cara Deploy dari HP (Termux):

### STEP 1: Install Fly CLI (2 menit)

Di Termux **Paduka Alwiy**, jalankan:

```bash
curl -L https://fly.io/install.sh | sh
```

Setelah selesai:
```bash
export FLYCTL_INSTALL="/data/data/com.termux/files/home/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
```

Cek instalasi:
```bash
flyctl version
```

---

### STEP 2: Login Fly.io (2 menit)

```bash
flyctl auth login
```

Ini akan buka browser untuk login:
1. Pilih "Sign up" atau "Log in"
2. Login dengan GitHub
3. Authorize Fly.io
4. Kembali ke Termux

---

### STEP 3: Deploy Aplikasi (5 menit)

Di folder ibio:

```bash
cd ~/ibio

# Launch app
flyctl launch --name ibio-paduka-alwiy --region sin
```

Akan muncul pertanyaan:
- "Would you like to set up a PostgreSQL database?" → Ketik: **yes**
- "Select configuration" → Pilih: **Development** (gratis)
- "Would you like to deploy now?" → Ketik: **no** (kita setup dulu)

---

### STEP 4: Set Environment Variables (2 menit)

```bash
flyctl secrets set \
  APP_NAME=iBio \
  APP_ENV=production \
  APP_DEBUG=false \
  SESSION_DRIVER=database \
  CACHE_DRIVER=file \
  QUEUE_CONNECTION=sync \
  FILESYSTEM_DISK=public
```

Generate APP_KEY:
```bash
php artisan key:generate --show
```

Copy hasilnya, lalu:
```bash
flyctl secrets set APP_KEY="base64:xxxxx..."
```

---

### STEP 5: Deploy! (3 menit)

```bash
flyctl deploy
```

Tunggu 3-5 menit sampai selesai.

---

### STEP 6: Run Migrations (1 menit)

```bash
flyctl ssh console

# Di dalam console:
php artisan migrate --force
php artisan db:seed --force
exit
```

---

### STEP 7: Login Admin

Buka browser:
```
https://ibio-paduka-alwiy.fly.dev/admin
```

Login:
- Email: **alwismith76@gmail.com**
- Password: **alwi313**

---

## 📊 Free Tier Fly.io:

- ✅ 3 VM gratis (256MB RAM each)
- ✅ PostgreSQL 1GB gratis
- ✅ 160GB bandwidth/bulan
- ✅ Always-on (tidak sleep)
- ✅ Deploy unlimited

---

## 🆘 Troubleshooting:

**flyctl command not found?**
```bash
export PATH="$HOME/.fly/bin:$PATH"
```

**Deploy gagal?**
```bash
flyctl logs
```

**Admin tidak bisa login?**
```bash
flyctl ssh console
php artisan db:seed --force
```

---

**Status**: ✅ Ready
**Platform**: Fly.io (FREE)
**Prepared for**: Paduka Alwiy
**Date**: 2026-05-31
