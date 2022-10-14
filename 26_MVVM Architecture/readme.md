# (25) Introduction REST API – JSON serialization/deserialization

---

## MVVM Architecture

### Apa itu MVM Architecture

MVVM => Model-ViewModel
- Memisahkan logic dengan tampilan (View) ke dalam ViewModel

### Keuntungan yang Didapat

1. Reusability
   - Jika ada beberapa tampilan yang memerlukan alur lgoci yang sama, mereka bisa menggunakan ViewModel yang sama
2. Maintainability
   - Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
3. Testability
   - Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

### Aturan pada MVVM

### Melakukan MVVM

#### Struktud DIrektori

- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut

- Tipa screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

#### Model

- Bentuk data yang akan digunakan, dibuat dalam bentuk class

- Data-data yang dimuat, diletakkan pada property

#### Model API

<img src="https://lh4.googleusercontent.com/uvOm68nw14DhmcAlxz9fo_-8MiqaCsDhlbVPSANp-qSOWVO-4p9ZHcg3IXrgiwh4dCsKGI7FeRq_TUsmLDA4eC-JdghUeYc4DFZAjZ7Ydpp0NOPUM5iVKzWopoF3dpnhqxh4-eh4f7LKHp_6KpskirKmNI20oV6wFzt9jBAdSsgUBhZ5KUaZJpjNZ0eK">

#### ViewModel

- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen

- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

<img src='https://lh6.googleusercontent.com/AIEiqtCppQD1SlhOWfHszow8q7FJY2F0SquNH0cPs4YmT8aIGwm5r4g25JnsSCJxboZFYNjqCCYQrfuXvZZBM_wz4I-WC42OXzOpb5WRopp4BjI_mTzdvNmRDPRELqIcIt6UMltmFSV-dK_OrrNjMt9jEp86pA5iuCseBdwBwOOI8tTLyUN4OwEoSlEX'>

#### Mendaftarkan ViewModel

- Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel

- MaterialApp sebagai child

<img src='https://lh5.googleusercontent.com/aXjK5gMsGr4JdQVPQMla0VDL4jdcCqH5LeiU8f4xQyEftmK1FIx62GoFkXBx25iRo3lQzeiQqXTx2fgSg7NmscdxpILJopzV9Elrl6R4b6JtzjW12pVGVMITUrrYjTk314qHqdaWm1XLOoLl363iCcp6rGSGYRzmyUSr4q0bUgLqa80Q2ebfjBRvpRL-'>

#### View

- Menggunakan StatefulWidget

<img src='https://lh3.googleusercontent.com/5j3POGr8hBt_jYxtxfOAxiBrErAYdOSwxFr8tsZy-GwM61IW_33xHSfFWIa8LQXxBRbsWJ0XTw4RxBvz_kSkKkHavPlT9D5-fAHlu-03vZnyYX6DJTKzFyxS7tqXhd_dbiNaVjFbH_FZkui26F9fNYyzmc5w3ouVEyGGpgxsODTR-q1uWQt2NU9NIOaf'>

#### Menampilkan Data di VIew

- Letakkan pada bagian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada widgets
