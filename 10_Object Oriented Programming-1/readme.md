# (10) Object Oriented Programming-1

## Summary

### Deskripsi
Object Oriented Programming biasa disebut OOP. Data dan proses diletakkan pada abstraksi object yang berisi susunan program. Komponen OOP antara lain:

#### 1. Class
Class merupakan abstraksi dari sebuah benda (object), memiliki ciri-ciri yang disebut property, dan memiliki sifat dan kemampuan yang disebut method.
Dari sebuah class dapat dibuat object. Object disebut juga Instance of class.

Cara membuat class dan object.
```dart
class Siswa{}
// Ini adalah class
void main(){
    var h1 = hewan();
    var h2 = hewan();
    var h3 = hewan();
}
// Ini adalah object
```

#### 2. Property
Property merupakan ciri-ciri suatu kelas dan memiliki sifat seperti variabel.

```dart
class Hewan{
    // Ini adalah class
    var mata = 2;
    var kaki = 4;
    // Ini adalah property
}
void main(){
    var h1 = Hewan();
    // Ini adalah object
    print(h1.mata);
    // Cara memanggil sebuah property
}   
```

#### 3. Method
Adalah aktivitas yang dapat dikerjakan sebuah class. Method bersifat seperti fungsi.

```dart
class Hewan{
    void suara(){
        print('Hewan mengaum');
    }
    //Ini adalah method
}
void main(){
    var h1 = Hewan();
    h1.bersuara();
    // Cara menjalankan method
}
```