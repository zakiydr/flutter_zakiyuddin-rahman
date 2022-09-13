class BangunRuang {
  int panjang = 0;
  int lebar = 0;
  int tinggi = 0;

  int volume = 0;
  void hitungVolume() {
    volume = panjang * lebar * tinggi;
  }
}

class Balok extends BangunRuang{
  Balok(int p, int l, int t)
  {
    panjang = p;
    lebar = l;
    tinggi = t;
  }
  @override
  void hitungVolume() {
    volume = panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang{
  int sisi = 0;
  Kubus(int s)
  {
    sisi = s;
  }
  @override
  void hitungVolume() {
    volume = sisi * sisi * sisi;
  }
}

void main() {
  Balok balok = Balok(25, 10, 5);
  balok.hitungVolume();
  print(balok.volume);

  Kubus kubus = Kubus(5);
  kubus.hitungVolume();
  print(kubus.volume);
}