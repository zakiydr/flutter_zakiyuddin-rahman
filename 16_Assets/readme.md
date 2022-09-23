
# (16) Assets

## Summary

### Assets

#### Deskripsi

- File yang di bundled dan di deployed bersamaan dengan aplikasi
- Tipe-tipe assets, seperti: static data ((SON files), icons, images, dan font file (ttf)

#### Menentukan Assets
- Flutter menggunakan pubspec.yaml
- Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
- Gunakan karakter "/" untuk memasukan semua assets dibawah satu directory name
  
```dart
assets:
    - assets/my_icon.png
    - assets/background.jpg
```

### Image

#### Deskripsi
- Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
- Flutter mendukung format gambar seperti JPEG, WebP, GlF, Animated Web/GIF, PNG, BMP, dan WBMP.
- Menampilkan gambar dari project asset dan internet

#### Loading Images
- Gunakan widget Image
- Membutuhkan properti image dengan nilai class Assetimage()
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
- Menggunakan method Image network, mendapatkan data image melalui internet dengan menggunakan string url nya

### Font

#### Deskripsi
- Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
- Penentuan font yang mau dipakai biasa nya oleh Ul designer
- Penerapan font menggunakan custom font atau dari package
- 
#### Custom Font
Cara menggunakan custom font:</br>
Step 1: Cari dan download font (Ex. https:/fonts.google.com/)</br>
Step 2: Import file ttf</br>
Step 3: Daftarkan font di pubspec.yaml</br>
Step 4: Mengatur font sebagai default</br>
Step 5: Gunakan font di spesifik widget</br>


#### Font dari Package
Cara menggunakan font dari package:</br>
Step 1: Tambahkan package google fonts di dependencies</br>
Step 2: Import package di file dart</br>
Step 3: Gunakan font dengan memanggil GoogleFonts.namaFont()</br>



### Aplikasi Task Management

#### Menambahkan Image
TODO 23: Menambahkan image pada empty_ task_ screen.dart</br>
TODO 24: Membuat profile picture di profile sheet.dart, menggunakan widget CircleAvatar</br>
TODO 25: Menambahkan font pada setiap text</br>

#### Menambahkan Konten
TODO 26:
(profile_sheet.dart)
menambahkan konten lain
</br>
TODO 27: (empty task_screen.dart) menambahkan text di bawah
image empty screen