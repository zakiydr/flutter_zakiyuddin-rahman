# (9) Collection

## Summary

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