# (22) Flutter State Management (BLoC)

## Summary

### Declarative UI
- Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
#### State
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau daya yang berubah
- Ada 2 jenis state dalam flutter, ephemeral state dan app state

##### 1. Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya:
  - PageView
  - ButtomNavigationBar
  - Switch Button
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

##### 2. App State
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:
  - Login info
  - Pengaturan preferensi pengguna
  - Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda.

#### Pendekatan State Management
- setState
  Lebih cocok penggunaannya pada ephemeral state
- Provider
  Penggunaan untuk state management yang lebih kompleks seperti App State, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari
- Bloc
  Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya
### setState

#### Latihan Membuat Aplikasi Shop Cart
- Menggunakan pendekatan state management dengan setState
  
- Step 1: Membuat Project Flutter Baru
  - (main.dart) pada bagian main,dart buat kode seperti ini
<img src=
"https://lh4.googleusercontent.com/aFRxTwc1ehuQrD3uor2JMBWKdgDMXi-OHGT-YJdzHmEztcFmVHTWM5WU9-Q3FfC1ey5xwspBaDNGmCsURkcHpGgUdUHOe2HReaCHXoUvyMfA5mrY_vhU_2tl7GkrSP14GpQ130wv4few-L7LFCznx43SgH1uD5CJCZFajFfb99DhQq0gazHte7RmupWi">

- Step 2: Membuat Halaman Utama
  - Buat folder baru screens, di dalam nya tambahkan file dart baru product_page.dart
  - (product_page.dart) tambahkan AppBar dan IconButton

<img src=
"https://lh5.googleusercontent.com/7hx3nKsO94LpTZb-LrbHONsnEk2vY5lArnivSuV1Tl2DjnMc4gfgIH9VfvgT_UvBbu1ETptYZDLYbEDoVdN8UTF0Kp_RBLUVUQSvd8D9tR3stf5feIBowqvyihp3ei8fJSxhcazkLNxfsvQOxuka-khP5w54PiHlUfG-Bfw3g2pWLC1Fqjvu_8px3kus">


- Step 3: Membuat Widget untuk Product List
  - (product_page.dart) buat StatelessWIdget baru ProductList dibawah StatelessWidget ProductPage, dan panggil widget ProductList nya di properti body ProductPage

<img src=
"https://lh3.googleusercontent.com/CCmhcQLhU1JMqIxjeikJncthNVd3SI56ErvJGrYujxf6EkZiIK5SRaDRZNfOg7v1F2_XbFlw9ODT1JKcEoxKtBqc7OYMshgjInbWIl9VINq_G-0IHpGJ2nEkto-Mw0VQHpGjfZXY3WngtgW2vRYqr3lBRqN_sB1eTHGfNpdkPM1pEmDnT9KBvh4-9gvl">

- Step 4 : Membuat Class Product
  - Buat folder baru Models, di dalamnya buat file dart baru product.dart

<img src="https://lh4.googleusercontent.com/oMOSkMV5TzZbTTqa5CzCL5IprGCOjFpeocVQYBtZtfVIJiZ8l-3D1R3i-YrVGp43BUYSjZ26XbvkniuEJaCb8kipuRp_zsZ3VGZdhNRTHTM2ezqSrkItUGkcLTmzSy4je9NNgMU1CwevgWXzTHoJmwYrvKOBuY-XwN84g-gMejZj8GzRqenUvMgYarj1">

- Step 5: Menambahkan GridView
  
<img src=
"https://lh4.googleusercontent.com/SGivRtXd1BgoJ6kRWEJYQewjGpK3pSDrG-72XLMPKTSVmnSJ-pKLTfaG8e0HbRDQdATKO3VnHM2PKWrEj26Y3TdkkW4733iDwMI1riZzIQUO4pRr0XoD9X7975BbsBDRR14Wzz4WuUIbTUCcNCSMEnW38qGiQ3s_ZzIQ_INlxOZop9ddJ03ixDGsl0ke">

- Step 5: Menambahkan GridView
(product_page.dart)
  
<img src=
"https://lh4.googleusercontent.com/SGivRtXd1BgoJ6kRWEJYQewjGpK3pSDrG-72XLMPKTSVmnSJ-pKLTfaG8e0HbRDQdATKO3VnHM2PKWrEj26Y3TdkkW4733iDwMI1riZzIQUO4pRr0XoD9X7975BbsBDRR14Wzz4WuUIbTUCcNCSMEnW38qGiQ3s_ZzIQ_INlxOZop9ddJ03ixDGsl0ke">

- Step 6: Membuat WidgetProductCards 
(product_page.dart)
  
<img src=
"https://lh6.googleusercontent.com/MUhbA1dPZnGKpykDCAcYb7nUrvKlNCD7kaKTWEPvDcHMRgOfmNVJO9q9kGYAssxKc4GP0JLibxQfhUmtJ-VaDsEV4eY1piddF-dd14lQR4h9QzUV7SiqBrP0ImgV93_jdO7L82-JVUDvAdWGOKywvkKHDbOj_7Ta32HFlcncB8rELAvCusKteMxSj-vg">

- Step 7: Membuat Tampilan Cards
(product_page.dart)
  
<img src=
"https://lh6.googleusercontent.com/1GDije3P45DTOCM0LlGVDNxh_UXB3cBDWe7sgbHNHpR3aSlWXSXLVfKpiO3E8nkL-h4S4nn5Rg_Pd8tqY5rDY0-Lc1OR8Jo_H7uQvlRktvqfLR43DfRv_28oPpzKBgs0KPCQHwinlgVvzBF4UR2AiDvmWJYZH5_0GjV3vND3cS96B-szSq5cBrogtDXX">

- Step 8: Menambahkan GridView
  - Buat file dart baru cart_page.dart dan tambahkan AppBar dan Container widget pada body
  

- Step 9: Membuat Navigasi ke Cart Page
  - (product_page.dart) buat navigasi di IconButton yang ada di bagian action AppBar
  
- Step 10: Mengubah ke StatefulWidget
  - (product_page.dart) Ubah ProductList menjadi StatefulWidget, karena disini menyimpan state yang dapat berubah dan tambahkan variabel cartList yang menjadi state nya

- Step 11: Membuat Constructor di ProductCards
  - (product_page.dart) membuat constructor di ProductCards untuk mengirim perubahan satte ke ProductList
  - (product_page.dart) pada IconButton nya tambahkan properti constructor nya

- Step 12: Mengubah pemanggilan di ProductCards
  - (product_page.dart) menambahkan properti yang dibutuhkan widget ProductCards
  
- Step 13: Memahami hierarki widget

- Step 14: Memahami hierarki widget
  - Melakukan lift the state up, yaitu dengan memindahkan state ke hierarki di atasnya supaya dapat digunakan oleh widget-widget di bawahnya

- Step 15: Melakukan Drilling

- Step 16: Membuat Constructor di ProductList
  - Buat constructor cartList di ProductList dan memperbaiki pemanggilan widget nya

- Step 17: Membuat Constructor di CartPage
  - (cart_page.dart) buat constructor cartList di CartPage dan memperbaiki pemanggilan widget nya di navigasi yang ada di product_page.dart

- Step 18: Menambahkan Tampilan di CartPage
  - (cart_page.dart) buat Column yang terdapat ListView dan Button

### Provider

#### Latihan Membuat Aplikasi Shop Cart
- Menggunakan pendekatan state management dengan Provider

- Step 1: Install Package Provider
  - Tambahkan package Provider di dependencies

#### Deskripsi
Class yang perlu diperhatikan dalam penggunaan provider, yaitu:
- Dari Package Provider
  - ChangeNotifierProvider
  - MultiProvider
  - Consumer
- Built In class dari Flutter SDK
  - ChangeNotifier

#### ChangeNotifier
- Class yang menambah dan menghapus listeners
- Digunakan dengan cara meng-extends
- Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang

Step 2: Membuat Provider Manager
- Buat file dart baru di dalam folder Models dengan nama cart—manager.dart
- (cart_manager.dart) pindahkan variabel cartList yang menyimpan data state di dalam class CartManager

Step 3: Membuat Method
• (cart_manager.dart) buat method complete() di dalam class, yang
digunakan untuk menambahkan data baru ke dalam list cartList

#### ChangeNotifierProvider
- Widget yang membungkus sebuah class
- Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI nya
- Menggunakan create, provider yang akan menyimpan model yang telah dibuat

#### MultiProvider
- Jika kita membutuhkan lebih dari satu provider

Step 4: Menambahkan ChangeNotifierProvider
- (main.dart) bungkus MaterialApp dengan ChangeNotiferProvider

#### Consumer
- Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
- Membangun ulang widget yang dibungkus Consumer saja
- Penting untuk meletakan Consumer pada lingkup sekecil mungkin
- Membutuhkan properti builder yang berisi context, model, dan child

Step 5: Menambahkan Consumer
- (product_page.dart) bungkus widget ProductCards dengan Consumer

Step 6: Akses Data dengan Provider.of
- (cart_page.dart) buat variabel baru yang menampung data dari
provider

Step 7: Hapus Kode Yang Tidak Dibutuhkan
- Hapus variabel dan constructor yang tidak dibutuhkan lagi

### BLoC

#### Deskripsi
- BLoC (Business Logic Component)
- Memisahkan antara business logic dengan UI

#### Cara Kerja Bloc
- Menerima event sebagai input
- Dianalisa dan Dikelola di dalam BLoC
- Menghasil state sebagai output

#### Stream
- Rangkaian proses secara asynchronous
- Actor utama di dalam BLoC

#### Latihan Bloc
- Membuat counter app dengan pendekatan state management
BLoC

Step 1: Install Package

```dart
dependencies:
    flutter:
        sdk: flutter
    flutter_bloc: ^8.0.1
    equatable: ^2 .0.3
```

Step 2: Membuat Folder Bloc
- Buat 3 file dart baru, counter_bloc.dart, counter_event.dart, dan counter_state.dart
- Bisa buat secara manual atau buat dengan extensions di code editor

Step 3: Menambahkan Event
- Tambahkan event di counter_event.dart

Step 4: Menambahkan State
- Tambahkan state untuk menyimpan nilai counter di
counter_state.dart

Step 5: Menambahkan Logika Bisnis
- Tambahkan logika bisnis di counter_bloc.dart
- Gunakan fungsi emit untuk mengirim state terbaru

Step 6: Menambahkan BlocProvider
- Tambahkan BlocProvider di main.dart

Step 7: Membangun UI
- Buat folder baru screens, di dalam nya buat file dart baru home_page.dart

Step 8: Menambahkan BlocBuiIder
- Tambahkan BlocBuiIder di home_page.dart

Step 9: Mengganti Text
- Menampilkan nilai terbaru yang dimiliki state

Step 10: Menambahkan context.read
- Tambahkan context.read pada fungsi onPressed ElevatedButton