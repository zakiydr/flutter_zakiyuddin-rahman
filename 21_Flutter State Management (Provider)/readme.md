# (21) Flutter State Management (Provider)

## Summary

### State
- Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefulWidget
- Agar antara widget dapat memanfaatkan state yang sama dengan mudah

#### Memanfaatkan State
- Dibuat sebagai property dari class
- Digunakan pada widget saat build

#### Mengubah State
- Menggunakan method setState

### GlobalState
- State biasa yang dapat digunakan pada seluruh widget
  
```mermaid
graph TD;
    Provider-->id1[State management];
    Provider-->id2[Perlu di install agar dapat digunakan];
```

#### Instalasi Provider
- Menambah package provider pada bagian dependencies dalam file pubspec.yaml
- Jalankan perintah flutter pub get

#### Membuat State Provider
- Buat file bernama contact.dart
- Definisikan state dalam bentuk class

#### Mendaftarkan State Provider
- Import dalam file main.dart
- Daftarkan pada runApp dengan MultiProvider

#### Menggunakan State dari Provider
- Simpan provider dalam variable
- Ambil data dari provider melalui getter