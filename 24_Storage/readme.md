# (24) Storage
---
## Summary

### Penyimpanan Lokal
- Diperlukan untuk efisiensi penggunaan data internet
- Ada beberapa cara implementasi penyimpanan lokal, contohnya seperti:
  - Shared Preferences
  - Local Database
  

### Shared Preferences

- Menyimpan data yang sederhana
- Penyimpanan dengan format key-value
- Menyimpan tipe data dasar seperti teks, angka, dan boolean.
- Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian

#### Impelementasi shared preference pada fitur login

1. STEP 1: Tambahkan package shared preference
2. STEP 2: Tambahkan TextEditingController untuk TextFormField
3. STEP 3: Buat method dispose(), untuk menghindari kebocoran memori
4. STEP 4: Buat variabel untuk menyimpan SharedPreference dan nilai bool newUser
5. STEP 5: Buat variable baru untuk menyimpan SharedPreference
6. STEP 6: Panggil method checkLogin() di method initState()
7. STEP 7:  di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user 
8. STEP 8: buat setBool dan setString baru di dalam blok kode if, dan buat navigasi untuk ke halaman HomePage
9. STEP 9: buat file dart baru home_page.dart dan tambahkan UI nya
10. STEP 10: (home_page.dart) buat variabel baru untuk menyimpan SharedPreference dan username
11. STEP 11: (home_page.dart) buat method baru initial(), dan panggil di method initState()
12. STEP 12: (home_page.dart) menggantin text 'username' menjadi variabel username
13. STEP 13: (home_page.dart) tambahkan method setBool dan remove pada ElevatedButton
14. STEP 9: [home]
15. STEP 9:
16. STEP 9:
17. STEP 9:

[home]: (home_page.dart)


### Local Database (SQLite)
### Aplikasi Task Management (continue)