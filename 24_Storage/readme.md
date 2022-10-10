# (24) Storage
---
## Summary

### Penyimpanan Lokal

- Diperlukan untuk efisiensi penggunaan data internet
- Ada beberapa cara implementasi penyimpanan lokal, contohnya seperti:
  - Shared Preferences
  - Local Database
  

### Shared Preferences

- Menyimpan data yang sederhana
- Penyimpanan dengan format key-value
- Menyimpan tipe data dasar seperti teks, angka, dan boolean.
- Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian

#### Impelementasi shared preference pada fitur login

var home = 'home_page.dart'
1. STEP 1: Tambahkan package shared preference
2. STEP 2: Tambahkan TextEditingController untuk TextFormField
3. STEP 3: Buat method dispose(), untuk menghindari kebocoran memori
4. STEP 4: Buat variabel untuk menyimpan SharedPreference dan nilai bool newUser
5. STEP 5: Buat variable baru untuk menyimpan SharedPreference
6. STEP 6: Panggil method checkLogin() di method initState()
7. STEP 7:  di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user 
8. STEP 8: buat setBool dan setString baru di dalam blok kode if, dan buat navigasi untuk ke halaman HomePage
9. STEP 9: buat file dart baru home_page.dart dan tambahkan UI nya
10. STEP 10: (home_page.dart) buat variabel baru untuk menyimpan SharedPreference dan username
11. STEP 11: (home_page.dart) buat method baru initial(), dan panggil di method initState()
12. STEP 12: (home_page.dart) menggantin text 'username' menjadi variabel username
13. STEP 13: (home_page.dart) tambahkan method setBool dan remove pada ElevatedButton

### Aplikasi Task Management (continue)

#### Menambahkan Fitur Login

14. TODO 28: Menambahkan login Scren pada aplikasi Task Management, dan menambahkan shared_preference package, dan email_validator package.
15. TODO 29: (main.dart) mengganti home menjadi routes
16. TODO 30: (profile_sheet.dart) menambahkan kode untuk shared preference di profile sheet

### Local Database (SQLite)

- Menyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat privat
- Menggunakan SQLite database melalui package sqflite
- SQLite adalah database open source yang mendukung insert, read, update dan remove data.

#### Implementasi SQLite

17. TODO 31: menambahkan package sqflite dan path (pubspec.yaml), pastikan import packages nya di file dart yang kita kerjakan
18. TODO 32: (task_model.dart) membuat model/modifikasi model yang sudah ada, dan membuat fungsi toMap dan fromMap
19. TODO 33: buat folder baru helper, dan di dalamnya buat file dart baru databse_helper.dart
20. TODO 34: (database_helper.dart) buat kelas baru DatabaseHelper dan tambahkan factory constructor
21. TODO 35: (database_helper.dart) membuat objek database
22. TODO 36: (database_helper.dart) membuka koneksi ke databse dan membuat tabel nya
23. TODO 37: (database_helper.dart) membuat method untuk menambahkan data ke tabel
24. TODO 38: (database_helper.dart) membuat method untuk membaca data
25. TODO 39: (database_helper.dart) membuat method untuk mengambil data dengan id
26. TODO 40: (database_helper.dart) membuat method untuk memperbarui data 
27. TODO 41: (database_helper.dart) membuat method untuk menghapus data
28. TOOD 42: membuat file dart baru db_manager.dart
29. TODO 43: (db_manager.dart) membuat constructor untuk membuat instance kelas DatabaseHelper
30. TODO 44: (db_manager.dart) membuat method _getAllTasks
31. TODO 45: (db_manager.dart) membuat method addTask, getTaskByld, updateTask, dan deleteTask
32. TODO 46: (main.dart) mengganti provider nya menjadi DbManager
33. TODO 47: (task_screen.dart) mengganti Consumer yang ada di buildTaskScreen jadi DbManager
34. TODO 48: (task_screen.dart) mengganti kode yang ada di onPressed FloatingActionButton
35. TODO 49: (task_screen.dart) menghapus properti onCreate dan membuat properti baru taskModel
36. TODO 50: (task_item_screen.dart) hapus properti _taskName, buat properti baru _isUpdate, dan ganti kode pada blok method initState()
37. TODO 51: (task_item_screen.dart) ganti kode yang ada di blok kode onPressed buildButton()
38. TODO 52: (task_list_screen.dart) ganti TaskManager jadi DbManager
39. TODO 53: (task_list_screen.dart) bungkus ListView.separated dengan Consumer<*DbManager*>(). Pindahkan variabel taskItems di dalam builder Consumer
40. TODO 54: (task_list_screen.dart) hapus key yang ada di widget TaskItemCard. Ganti index untuk deleteTask nya menggunakan item.id
41. TODO 55: (task_list_screen.dart) bungkus widget TaskItemCard dengan widget InkWell dan gunakan ontap dengan fungsi async. Di dalam blok fungsinya tambahkan variabel selectedTask yang menampung item.id!, dan tambahkan navigasi ke TaskItemScreen