# 3_Basic Version and Branch Management (Git)
## Data diri
Nama      : Zakiyuddin Rahman</br>
Nomor urut: XX

## Summary
1. Manajemen Github menggunakan Git Bash.
2. Cara mengoptimisasi workflow dan kolaborasi pada Github.
3. Mengerjakan tugas praktek dengan mengimplementasikan materi yang dipelajari pada section ini.


## Rangkuman Praktikum
Pertama, saya menjalankan kode git --global user.name/user.email agar git dapat mengidentifikasi oleh siapa perubahan akan dilakukan. Selanjutnya, menjalankan perintah git init dan git remote add origin untuk menginisiasi dan menentukan repository yang akan diubah.

Berikut adalah penjelasan untuk tugas pada slide 75
1. Repository sudah saya kumpulkan dan sudah menambahkan github mentor
2. Saya menggunakan perintah
git checkout -b development master
> Berfungsi untuk langsung bersiap pada branch yang baru saja ditambahkan
git branch featureA
git branch featureB
> Menambahkan branch

3. Semua sudah diimpelementasikan pada tugas praktikum

4. Conflict terjadi karena ada 2 perubahan yang berbeda pada line yang sama. Saya menambahkan baris ke 4 dan ke 5 pada featureA lalu dipush. Kemudian, menambahkan isi yang berbeda pada baris ke 4 dan ke 5 pada featureB kemudian dipush. Selanjutnya, saya menjalankan perintah
<sub>git checkout featureB</sub>
<sub>git merge --no-ff featureA</sub>
Memilih proses merge, kemudian selesai.

5. Kode pada nomer 4 merupakan perintah merge untuk no fast forward.