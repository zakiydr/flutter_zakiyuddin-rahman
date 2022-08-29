# (6) Basic Dart Programming

## Summary

### Ringkasan Dart

- Bahasa pemrogramman yang bisa merancang aplikasi dapat berjalan dengan cepat
- Aplikasi yang dibuat berupa frontend
- Memiliki kelebihan 
  ***1. Type Safe*** </br>
  ***2. Null Safety*** </br>
  ***3. Rich standard library*** </br>
  ***4. Multiplatform*** </br>

### Tipe Data

#### int
Mendeklarasikan variabel berupa bilangan bulat

```dart
void main(){
    int umur = 20;
}
```
#### double
Mendeklarasikan variabel berupa bilangan pecahan

```dart
void main(){
    double beratBadan = 55.5;
}
```

#### bool
Mendeklarasikan variabel berupa boolean (true dan false)

```dart
void main(){
    bool pria = true;
}
```

#### string
Mendeklarasikan variabel berupa teks

```dart
void main(){
    String nama = 'Zaki';
}
```

### Operator

#### Aritmatik

perhitungan matematis

```dart
void main(){
    print(10 + 5);
    print(10 - 5);
    print(10 / 5);
    print(10 * 5);
    print(10 % 5);
}
```

#### Assignment
memberi nilai pada variabel

```dart
void main(){
    print(10 = 5);
    print(10 += 5);
    print(10 -= 5);
    print(10 *= 5);
    print(10 /= 5);
    print(10 %= 5);
}
```

#### Comparison
membandingkan nilai

```dart
void main(){
    print(10 == 5);
    print(10 >= 5);
    print(10 <= 5);
    print(10 > 5);
    print(10 < 5);
}
```

### Logical
membandingkan kondisi

```dart
void main(){
    print(10 == 5 && 5 == 10);
    print(10 == 5 || 5 == 10);
    print(10 == 5 ! 5 == 10);
}
```
