# (8) Advance Function, Async-Await

## Summary

### Advance Function

#### Anonymous Function
- Tidak memiliki nama
- Fungsi sebagai data

Contoh: 
```dart
void main(){
    hello();
    print(jumlah(10, 20));
}

var hello = (){
    print('Hello World');
};

var jumlah = (int a, int b){
    return a + b;
};
```

#### Arrow Function
- Dapat memiliki nama atau tidak
- Berisi 1 data (dari proses maupun data statis)
- Nilai return fungsi ini diambil dari data tersebut

Contoh:
```dart
var hello = () => print('Hello World');
// Fungsi hello melakukan print di dalamnya
var jumlah = (int a, int b) => a + b;
// Fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print

void main(){
    hello();
    print(jumlah(1, 2));
}
```

#### Async-Await
- Menjalankan beberapa proses tanpa perlu menunggu
- Proses ditulis dalam bentuk fungsi
- Await akan menunggu hingga async selesai

#### Tipe data Future
- Data yang dapat ditunggu
- Membawa data return dari fungsi async

### Collection
Kumpulan data pada satu tempat

#### List
Menyimpan data (elemen) secara berbaris

| ... | ... | ... | ... | ... |
| --- | --- | --- | --- | --- |
| 0 | 1 | 2 | 3 | 4 |

```dart
void main() async {
    var scores = [];
    // Menginisiasi list
    scores.add(60);
    scores.add(70);
    scores.add(80);
    // Menambah data
    print(scores);
    // Mencetak data

    var scores = [2, 4, 5, 7, 10]
    // Menginisiasi dan langsung mengisi data
    print(scores);
    
    print(scores[0]);
    print(scores[1]);
    // Mencetak data berdasarkan index

    for(var score in scores){
        print(score);
    }
}
```

#### Map
Menyimpan data secara key-value
Key berguna selayaknya index pada list


|   |   |
| --- | --- |
| key1 | value1 |
| key2 | value2 |
| key3 | value3 |
| key4 | value4 |
| key5 | value5 |

```dart
void main() async {
    var student = {
        'name': 'Zakiyuddin',
        'age' : 20
    };
    // Mendeklarasikan dan menambah datanya
    print(student);

    print(student['name']);
    // Mencetak data berdasarkan key

    for(var key in student.keys){
        print(student[key]);
    }
}
```