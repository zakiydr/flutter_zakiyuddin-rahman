# (27) Finite State Machine

---

## Finite State Machine

#### Apa itu Finite State Machine

- Mesin yang memiliki sejumlah state
- Tiap state menunjukkan apa yang terjadi sebelumnya

#### Contoh:

Ada 3 state:
- IDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan

#### Contoh Sukses:

- IDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDLE saat proses selesai

#### Contoh Gagal

- IDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDLE

### Implementasi pada View-Model

#### Menambah Enum

Membuat enum, untuk masing-masing state:
- none sata IDLE
- loading saat RUNNING
- error saat ERROR

#### Menambah Getter-Setter

Membuat getter-setter untuk menyimpan state dari widget

#### Gunakan State

Tiap proses yang perlu state tersebut, dapat memanfaatkannya

### Implementasi pada Widget

#### Perbedaan Tampilan Tiap State

- Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan
- Saat state menunjukkan RUNNING, maka ditampilkan progress indicator.
- Saat state menunjukkan IDLE setelah RUNNING, maka ditampilkan data yang didapatkan.
- Saat state menunjukkan ERROR, maka ditampilkan pesan yang menunjukkan bahwa proses tidak dapat diselesaikan

---

## Unit Test

#### Apa itu Unit Test?

- Salah satu jenis pengujian pada perangkat lunak
- Pengujian dilakukan pada unit dalam perangkat lunak
- Unit yang dimaksud umumnya adalah fungsi atau method

#### Tujuan Unit Test

- Memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai
- Menjadi dokumentasi

#### Bagaimana Melakukan Unit Test?

**Manual**  : Unit dijalankan dan dicek hasilnya secara manual

**Automated**   : Menulis script yang dapat dijalankan berkali-kali menggunakan test runner

#### Menambah Dependencies

- Tambahkan test, pada bagian dev_dependencies dalam file pubspec.yaml
- Jalankan flutter pub get pada terminal

#### Membuat File Test

-  Pada folder test, tambahkan folder baru model/api
-  Dalam folder tersebut, tambahkan file baru contact_api_test.dart

#### Menulis Test Script

- Import package test
- Membuat test case
- Menjalankan fungsi
- Cek hasil dengan expect

#### Menjalankan Test

- Menggunakan perintah flutter test

#### Mengelompokkan Test

- Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok
- Dilakukan dengan menggunakan Group

### Mocking

#### Apa itu Mocking?

- Proese yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
- Pengaruh tersebut dapat mengganggu proses pengujian
- Dilakukan mocking untuk menghindari masalah-masalah tersebut

#### Bagaimana Cara Kerja Mocking?

- Suatu object dibuat bentuk tiruannya
- Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
- Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal

#### Menambah Dependencies

- Tambahkan mockito dan build_runner, pada bagian dev_dependencies dalam file pubspec.yaml
- Jalankan flutter pub get pada terminal.

#### Melakukan Mocking

- Mengubah kode agar dapat dilakukan mocking
- Memasang annotation untuk membuat mock
- Membuat file mock dengan menjalankan perintah flutter pub run build_runner build
- Menggunakan mock yang telah dibuat

#### Menjalankan Test

- Dengan mocking, test berjalan lebih cepat