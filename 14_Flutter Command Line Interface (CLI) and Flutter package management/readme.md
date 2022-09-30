# (14) Flutter Command Line Interface (CLI) and Flutter package management

## Summary

### Flutter CLI
- Alat yang digunakan untuk berinteraksi dengan Flutter SDK
- Perintah dijalankan dalam terminal

#### Important CLI Commands
- Flutter Doctor
- Flutter Create
- Flutter Run
- Flutter Emulator
- Flutter Channel
- Flutter Pub
- Flutter Build
- Flutter Clean

#### Flutter Doctor
Perintah untuk menampilkan informasi software yang dibutuhkan flutter

```flutter create```

#### Flutter Create
Perintah untuk membuat project aplikasi flutter baru di directory tertentu

```flutter create <app_name>```

#### Flutter Run
Perintah untuk menjalankan project aplikasi di device yang tersedia

```flutter run <dart_file>```

#### Flutter Emulator
Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru

```
flutter emulators
flutter emulators --launch <emulator_id>
flutter emulators --create [--name xyz]
```

#### Flutter Channel
Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini

```flutter channel```

#### Flutter Pub
Ada dua syntax yang bisa kita gunakan, yaitu:

- Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml

```flutter pub add <package_name>```

- Flutter pub get, untuk mendownload semua packages atau dependecies yang ada di pubspec.yaml

```flutter pub get```

#### Flutter Build
Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll.

```flutter build <directory>```

#### Flutter Clean
- Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator
- Perintah ini akan memperkecil ukuran project tersebut

### Package Management
- Flutter mendukung sharing packages
- Packages dibuat developers lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website pub.dev

#### Cara Menambahkan Package
1. Cari package di *pub.dev*
2. Copy baris dependencies yang ada di bagian installing
3. Buka *pubspec.yaml*
4. Paste barisnya di bawah dependencies *pubspec.yaml*
5. Run *flutter pub get* di terminal
6. Import package di file darta gar bisa digunakan
7. Stop atau restart aplikasi jika dibutuhkan
