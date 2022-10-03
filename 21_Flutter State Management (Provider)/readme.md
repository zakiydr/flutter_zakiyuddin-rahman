# (20) Flutter State Management (Provider)

## Summary

### State
- Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefulWidget
- Agar antara widget dapat memanfaatkan state yang sama dengan mudah

#### Memanfaatkan State
- Dibuat sebagai property dari class
- Digunakan pada widget saat build

#### Mengubah State
- Menggunakan method setState

### GlobalState
- State biasa yang dapat digunakan pada seluruh widget
```mermaid
graph TD;
    Provider-->State management;
    Provider-->Perlu di install agar dapat digunakan;
```