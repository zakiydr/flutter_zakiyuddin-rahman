
# (17) Form - Input - Button

## Summary

### Form
- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu

#### Membuat Form
- Menggunakan StatefulWidget
- Keadaan form disimpan menggunakan GlobalKey<FormState>
  
### Input
#### 1. TextField
   - Menerima isian data dari pengguna
   - Isian data dapat lebih dari satu
###### Membuat TextField
- Data diambil menggunakan TextEditingController
- Isian data berupa teks

#### 2. Radio
   - Memberi opsi pada pengguna
   - Hanya dapat memilih satu opsi
###### Membuat Radio
- Data diambil menggunakan property dengan tipe data sesuai value pada radio

#### 3. Checkbox
   - Memberi opsi pada pengguna
   - Dapat memilih beberapa opsi
###### Membuat Checkbox
- Data diambil menggunakan property bertipe bool
#### 4. Dropdown Button
   - Memberi opsi pada pengguna
   - Hanya dapat memilih satu opsi
   - Opsi tidak ditampilkan di awal, hanya tampil jika ditekan
###### Membuat DropdownButton
- Data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem

### Button
- Bersifat seperti tombol
- Dapat melakukan sesuatu saat ditekan

#### 1. ElevatedButton

- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed:

#### 2. IconButton

- Tombol yang hanya menampilakn icon
- Jika ditekan, akan menjalankan onPressed: