# (13) Platform Widget

## Memanfaatkan widget dengan gaya ebrbeda pada Android dan iOS

### MaterialApp
- Widget dasar yang mengemas seluruh widget dalam aplikasi
- Widget yang digunakan pada sistem Android
- Diimport dari **package:flutter/material.dart**


#### Struktur
```dart
MaterialApp(
    theme: ThemeData.dark(),
    // Mengatur tema aplikasi
    home: const HomePage(),
    // Halaman utama
// Cara alternatif menggunakan route
MaterialApp(
    theme: ThemeData.dark(),
    // Mengatur tema aplikasi
    initialRoute: 'home',
    //Route utama
    routes: {
        'home': (_) => const HomePage(),
    },
    // Mendaftarkan halaman pada routes
);
```

### Scaffold
- Widget dasar untuk membangun sebuah halaman pada MaterialApp
#### Struktur

```dart
Scaffold(
    appBar: AppBar(),
    // Bar menu bagian atas halaman
    drawer: Drawer(),
    // Menu bagian samping halaman
    body:
    // Bagian utama halaman
    bootomNavigationBar: BottomNavigationBar(),
    //Menu bagian bawah halaman
)
```

### CupertinoApp
- Widget dasar yang mengemas seluruh widget dalam aplikasi
- Widget yang digunakan pada sistem iOS
- Diimport dari **package:flutter/cupertino.dart**
- 
1. Stateless Widget
   - Tidak bergantung pada perubahan data
   - Hanya fokus pada tampilan
   - Dibuat dengan extends pada class StatelessWidget

#### Struktur
- Variabel _themeDark dibuat untuk menyimpan tema
- Diperlukan karena Cupertino tidak menyediakan **ThemeData.dark()** seperti pada Material

```dart
final _themeDark = const CupertinoThemeData.raw(Brightness.dark,);
```

Widget pertama yang dibuka diletakkan pada bagian home

```dart
CupertionApp(
    theme: _themeDark,
    home: const HomePage(),
);
```

### CupertinoPageScaffold
Widget dasar yang membangun sebuah halaman pada CupertinoApp

#### Struktur
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti
```dart
CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(),
    child: ... ,
);
```