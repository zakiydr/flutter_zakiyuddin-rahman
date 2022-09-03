# (7) Branching - Looping - Function
---
## Summary

### Pengambilan keputusan
Menentukan alur program pada kondisi tertentu

#### IF - ELSE IF - ELSE
- Memerlukan nilai bool (logical & comparison)
- Menjalankan bagian proses jika nilai bool bernilai true
```dart
void main(){
    var usia = 18;
    if (usia < 12) {
        print('Anak-anak');
    // Proses jika nilai usia adalah true
    } else if (usia < 20){
        print('Remaja');
    // Alternatif proses jika nilai usia adalah false pada keputusan pertama
    } else {
        print('Dewasa');
    // Proses jika nilai usia adalah false
    }
}
```
> Else if menambah alternatif jika nilai bool adalah false dan menambah pengujian nilai bool lain


### Perulangan
Menjalankan proses berulang kali

#### For
- Diketahui berapa perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

```dart
void main() {
    for(var i = 0; i < 10; i += 1) {
        print(i);
    }
} 
```
> Nilai awal i adalah 0 dan akan terus dikenakan perintah print sebanyak 10, setiap perulangan akan menambahkan nilai awal sebanyak 1

#### While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

```dart
void main() {

    var i = 0;
    while(i < 10) {
        print(i);
        i++;
    }
}
```
> Perulangan While akan terus terjadi selama nilai bool bernilai true

#### Do-While
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

```dart
void main (){
    var i = 0;
    do {
        print(i);
        i++;
    } while(i < 10);
}
```
> perintah do akan dijalankan selama nilai bool pada perulangan while bernilai true

#### Menghentikan Perulangan
##### Break
Menghentikan seluruh proses perulangan

```dart
void main() {
    for(var i = 0; true; i ++ 1) {
        if (i == 10) {
            break;
        }
        print(i);
    }
} 
```
>Jika i adalah 10, perulangan dihentikan
##### Continue
Menghentikan satu kali proses perulangan

```dart
void main() {
    for(var i = 0; i < 10; i += 1) {
        if (i == 5) {
            continue;
        }
        print(i);
    }
} 
```
> Jika i adalah 5, perulangan dilewati
### Fungsi
- Adalah kumpulan perintah
- Dapat digunakan berkali-kali
- Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah

Memanggil fungsi
```dart
void main() {
    halo();
}
```

Fungsi dengan parameter
```dart
void tampil(String teks) {
    print(teks);
}

void main() {
    tampil('halo');
}
```
> Perintah akan dijalankan saat fungsi dipanggil

Fungsi dengan return
```dart
int jumlah(int a, int b) {
    return a + b;
}

void main() {
    var hasil = jumlah(1, 2);
    print(hasil);
}
```
> Perintah yang dijalankan saat fungsi dipanggil return nilai;

