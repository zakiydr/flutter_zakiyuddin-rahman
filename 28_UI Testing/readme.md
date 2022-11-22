# (28) UI Testing

---

## Pengertian UI Testing

### Tentang UI Testing

Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.

#### UI Testing di Flutter

Disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis

### Keuntungan UI Testing

- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

## Melakukan UI Testing

- Instalasi Package Testing

- Penulisan Script Testing
  - Dilakukan pada folder test
  - Nama file harus diikuti ```_test.dart```
  - Tiap file berisi fungsi main() yang di dalamnya dapat dituliskan script testing
  - Tiap skenario pengujian disebut test case
  - Test case diawali dengan testWidgets dan diberi judul
  - Simulasi proses mengaktifkan halaman AboutScreen
  - Memeriksa apakah di halaman tersebut terdapat teks "About Screen"
- Menjalankan Testing
  - Perintah flutter test akan menjalankan seluruh file test yang dibuat
  - Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil
- Menjalankan Testing (Gagal)
  - Ditampilkan penyebab gagalnya pengujian