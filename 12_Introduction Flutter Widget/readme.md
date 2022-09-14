# (12) Introduction Flutter Widget

## Summary

### Flutter
Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

#### Keunggulan Flutter
- Mudah digunakan dan dipelajari
- Produktivitas tinggi
- Dokumentasi lengkap
- Komunitas yang berkembang

#### Bagian dari Flutter
Software Development Kit (SDK) : alat alat untuk membantu proses pengembangan aplikasi
Framework : perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi

#### Membuat Project
Menjalankan perintah:
flutter create <nama_project>
```
flutter create phonebookapp
```

#### Menjalankan project
- Masuk ke direktori project
- Jalankan perintah
```
flutter run
```
> Direktori project:
> lib - ruang kerja utama
> test - aktivitas pengujian

File yang pertama kali dibaca merupakan file bernama main.dart

### Widget
- Digunakan untuk membentuk UI
- Dapat terdiri dari beberapa widget lainnya

#### Jenis
1. Stateless Widget
   - Tidak bergantung pada perubahan data
   - Hanya fokus pada tampilan
   - Dibuat dengan extends pada class StatelessWidget

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Text('Selamat datang di Flutter'))
    );
    
  }
}
```

2. Stateful Widget
   - Mementingkan pada perubahan data
   - Dibuat dengan extends pada class StatefulWidget
   - 1 widget menggunakan 2 class (widget dan state)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: SafeArea(child: Text('Selamat datang di Flutter')),
      ),
    );
  }
}
```

### Built-in Widget
- Widget yang dapat langsung digunakan
- Sudah terinstall bersama Flutter

#### MaterialApp
Membangun aplikasi dengan desain material
```dart
const MaterialApp();

const MateriapApp(
    home: Text('Selamat datang di Flutter')
);
```
#### Scaffold
Membentuk sebuah halaman
```dart
const Scaffold();

const Scaffold(
    body: Text('Selamat datang di Flutter')
);
```
#### AppBar
Membentuk application bar yang terletak pada bagian atas halaman
```dart
AppBar();

AppBar(
    title: const Text('Home')
);
```
#### Text
Menampilkan teks
```dart
const Text();

const Text('Halo Flutter')
);
```