# (11) Object Oriented Programming-2

## Summary

### Deskripsi
Object Oriented Programming biasa disebut OOP. Data dan proses diletakkan pada abstraksi object yang berisi susunan program.

#### 1. constructor
Merupakan method yang dijalani saat pembuatan object. Dapat menerima parameter dan tidak memiliki return. constructor memiliki nama sama seperti nama class

Cara memberi constructor.
```dart
class Hewan{
    var mata;
    var kaki;
    // Ini property
    Hewan(){
        mata = 2;
        kaki = 4;
    }
    // Ini constructor
}
```

#### 2. Inheritance
Membuat class baru dengan memanfaatkan class yang sudah ada. Bertujuan agar kemampuan yang sudah ada dapat dimiliki oleh class baru

```dart
class Hewan{
    var mata;
    var kaki;
    // Ini property
}
class Kambing extends Hewan{
    // Ini adalah class, extends merupakan inheritance
    Kambing(){
        mata = 2;
        kaki = 4;
    }
}
void main(){
    var k1 = Kambing();
    print(k1.mata);
    // Cara memanggil inheritance
}   
```

#### 3. Method Overriding
Menulis ulang method yang ada pada super-class. Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda. Melakukan Overriding:
- Dilakukan pada class yang melakukan inheritance
- Method sudah ada pada class induk
- Method ditulsi ulang seperti membuat method baru pada class anak
- Ditambahkan tanda @override di baris sebelum method dibuat
```dart
class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }

    bernapas(){
        print('tidak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    @override
    bernapas(){
        print('paru-paru');
    }
}
```

#### 4. Interface
Interface berupa class. Menunjukkan emthod apa saja yang ada pada suatu class. Seluruh method wajib di override. Digunakan dengan menggunakan implements
Menggunakan Interface:
- Sekilas mirip inheritance
- Pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk.
```dart
class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }

    bernapas(){
        print('tidak diketahui');
    }
}

class Kambing implements Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    @override
    bernapas(){
        print('paru-paru');
    }
}
```

#### 5. Abstract Class
Berupa class abstrak. Menunjukkan method apa saja yang ada pada suatu class. Digunakan dengan emggunakan extends. Tidak dapat dibuat object. Tidak semua method harus di override.
```dart
abstract class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }

    bernapas(){
        print('tidak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
}
```

#### 6. Polymorphoism
Kemampuan data berubah menjadi bentuk lain
Tipe data yang dapat digunakan adalah super class
Dapat dilakukan pada class dengan extendes atau implements
```dart
class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }

    bernapas(){
        print('tidak diketahui');
    }
}

class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    @override
    bernapas(){
        print('paru-paru');
    }
}

void main(){
    Hewan k1 = Kambing();
    k1.reproduksi();
}
```

#### 7. Generics
Dapat digunakan pada class atau fungsi. Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda. Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi

##### Membuat Class dengan Generics
Class Hadiah dapat dimasukkan data dengan tipe T. Tipe T dapat digunakan di seluruh class Hadiah
```dart
class Hadiah<T>{
    var isi;

    Hadiah(T i){
        isi = i;
    }
}
```

##### Menggunakan Class dengan Generics
Setelah nama class, menjadi tempat tipe data yang diinginkan
```dart
class Hadiah<T>{
    var isi;

    Hadiah(T i){
        isi = i;
    }
}

void main(){
    var h1 = Hadiah<String>('mobil');
    print(h1.isi);

    var h2 = Hadiah<int>(10);
    print(h2.isi);
}
```

##### Membuat Fungsi dengan Generics
Setelah nama fungsi, menjadi tempat variabel generics
```dart
class Hadiah<T>{
    var isi;

    Hadiah(T i){
        isi = i;
    }
}

void cektipe<T>(T data) {
    print(data.runtimeType);
}
```

##### Menggunakan fungsi dengan Generics
Setelah nama fungsi, menjadi tempat tipe data yang diinginkan
```dart
class Hadiah<T>{
    var isi;

    Hadiah(T i){
        isi = i;
    }
}

void main(){
    cekTipe<String>("satu");
    cekTipe<int>(1);
}
```