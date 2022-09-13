class Matematika{
  hasil(int x, int y){
  }
}


class FaktorPersekutuanTerbesar extends Matematika{
  @override
  hasil(int x, int y) => x.gcd(y);
}

class KelipatanPersekutuanTerkecil extends Matematika{
  @override
  hasil(int x, int y) {
  if ((x == 0) || (y == 0)) {
    return 0;
    // Mengikuti dokumentasi dart
  }
  return (x * y) ~/ x.gcd(y);
  }
}

void main() {
  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil();
  print(kpk.hasil(15, 20));
  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar();
  print(fpb.hasil(15, 20));
}