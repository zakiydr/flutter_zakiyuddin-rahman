# (20) Flutter Navigation
---
## Summary

### Apa itu Navigation?
- Berpindah dari halaman satu ke halaman lain

### Navigation Dasar
- Pindah halaman > ```Navigator.push()```
- Kembali > ```Navigator.pop()```

#### Mengirim Data ke Halaman Baru
- Menggunakan parameter pada constructor halaman
  
### Navigation dengan Named Routes
- Tiap halaman mejiliki alamat yang disebut route
- Pindah halaman > Navigator.pushNamed()
- Kembali > Navigator.pop()

#### Mendaftarkan Route
- Tambahkan initialRoute dan routes pada MaterialApp
- Tiap route adalah fungsi yang membentuk halaman

#### Mengirim Data ke Halaman Baru
Menggunakan arguments saat melakukan pushNamed