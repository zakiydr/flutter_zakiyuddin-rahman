# (25) Introduction REST API – JSON serialization/deserialization

---

## REST API Client

### REST API (Representational State Transfer Application Programming Interface)

- Arsitektural yang memisahkan tampilan dengan proses bisnis
- Bagian tamilan dengan proses bisnis berikirim data melalui HTTP Request
### HTTP
- Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web

#### Pola Komunikasi

- Client mengirim request
- Server mengolah dan membalas dengan memberi response

#### Struktur Request

**URL**</br>
Alamat halaman yang akan diakses

**Method (GET, POST, PUT, DELETE)**</br>
Menunjukkan aksi yang diinginkan

**Header**
Informasi tambahan terkait request yang dikirimkan

**Body**
Data yang disertakan bersama request

#### Struktur Response

**Status Code**</br>
Kode yang mewakili keseluruhan response, baik sukses maupun gagal

**Header**</br>
Informasi tambahan terkait response yang diberikan

**Body**
Data yang disertakan bersama response 

### Dio

- Dio:
  - Sebagai HTTP Client
  - Dimanfaatkan untuk melakukan REST API

#### Instalasi

- Jalankan ```flutter pub add dio```
- Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

### Serialisasi JSON

- JSON:
  - Cara penulisan data
  - Javascript Object Notation
  - Umum digunakan pada REST API

- Mengubah struktur data ke bentuk JSON
- Menggunakan fungsi jsonEncode dari package dart:convert

#### Deserialisasi JSON

- Mengubah bentuk JSON ke struktur data
- Menggunakan fungsi jsonDecode dari package dart:convert

### Cara menggunakan REST API

#### Penggunaan Method GET

```dart
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.get(
'https://reqres.in/api/users'
);
```

#### Penggunaan Method POST

```dart
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.post(
  'https://reqres.in/api/users',
  data: {
    'name':'morpheus',
'job':'leader',
  },
);
```

#### Penggunaan Method PUT

```dart
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.put(
  'https://reqres.in/api/users/2',
  data: {
    'name':'morpheus',
'Job':'zion resident,
  },
);
```

#### Penggunaan Method DELETE

```dart
import 'package:dio/dio.dart';

final Dio dio = Dio();

final Response response = await dio.delete(
  'https://reqres.in/api/users/2'
);
```