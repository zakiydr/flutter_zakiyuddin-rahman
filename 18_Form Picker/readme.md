# (18) Form Picker
---

## Basic Layouting

### Row and Column
- Row = widget children = horizontal
- Column = widget children = vertikal
  
### MainAxisSize
- Menentukan space yang menempati axis
- Memiliki value .max untuk mengisi seluruh space, dan .min untuk children saja
  
### MainAxisAlignment
- Memposisikan children dari Row atau Column
- Memiliki 6 values:
  1. MainAxisAlignment.start
  2. MainAxisAlignment.end
  3. MainAxisAlignment.center
  4. MainAxisAlignment.spaceBetween
  5. MainAxisAlignment.spaceEvenly
  6. MainAxisAlignment.spaceAround

### CrossAxisAlignment
- Memposisikan children dari Row atau Column pada Cross Axis
- Row = vertikal
- Column = horizontal
- Memiliki 5 values:
  1. CrossAxisAlignment.start
  2. CrossAxisAlignment.end
  3. CrossAxisAlignment.center
  4. CrossAxisAlignment.stretch
  5. CrossAxisAlignment.baseline
   
### Flexible Widget
- Child widget menjadi flexible
- Harus dalam Row atau Column
- Perubahan ukuran ditentukan fit dan flex

#### Fit Properti
- Menentukan flexible widget memenuhi extra space atau tidak
- Menerima values berupa FLexFit.loose atau FLexFit.tight
- FlexFit.loose = ukuran minimum
- FlexFit.tight = ukuran maximum

#### Flex Properti
- Menentukan perbandingan ukuran dari child widget nya
- Menerima tipe data integer
- Membandingkan dengan flex lain

### Expanded Widget
- Memaksa child widget untuk memenuhi space tersedia
- Harus berada dalam widget Row atau Column
- Memiliki default value FlexFit.tight
- Perubahan ukuran ditentukan flex
---
## Advance User Input

### Date Picker
- Widget yang memungkinkan user memasukkan tanggal
- Widget berupa tanggal

#### Cara Membuat
- Menggunakan fungsi bawaan ```showDatePicker```
- Fungsi ```showDatePicker``` memiliki tipe data future
- Menampilaknd dialog material design date picker
- Menambahkan packages intl di pubspec.yaml
- Menambahkan fungsi showDatePicker di dalam onPressed
- Memanggil fungsi setState di dalam onPressed
### Color Picker
- Widget yang bisa digunakan memilih warna oleh user

#### Cara Membuat Color Picker
- Menggunakan packages ```flutter_colorpicker```
- Menambahkan packages ```flutter_colorpicker``` di pubspec.yaml
- Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
- Import packages ```flutter_colorpicker``` dalam file dart
- Membuat kode untuk penggunaan packages ```flutter_colorpicker```
### File Picker
- Kemampuan widget mengakses storage
- Menggunakan packages file_picker dan open_file
- Menambahkan packages file_picker dan open_file di pubspec.yaml
- Import pakcages file_pikcer dan open_file dalam file dart
- Membuat fungsi untuk mengexplore dan memilih files dari storage
- Memanggil fungsi yang telah dibuat di dalam onPressed
- Membuat fungsi untuk membuka files yang telah dipilih
- Mengambil file dari object result dan memanggil fungsi open file dan file picker