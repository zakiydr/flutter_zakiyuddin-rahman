/*
Kambing Kurban Berat 32 - 35 KG.
Sapi jantan muda mencapai berat dewasa pada berat hidup kira-kira 300-400 kg dan sapi betina pada umur yang sama berat badannya : 240-300 kg.
*/
class Hewan{
  double berat = 240;
}

class Mobil{
  double kapasitas = 800;
  List <double> muatan = [80, 50, 30, 40];
  totalMuatan(){
    double sum = 0;
    muatan.forEach((element) => sum += element);
    return sum;
//    for (var i in muatan){
//      sum += i;
//      return sum;
//      }
  }
  tambahMuatan(){
    var total = totalMuatan();
    var hewan = Hewan();
    var muatanMobil = Mobil().muatan;
    if ((kapasitas - total) > hewan.berat){
      muatanMobil.add(hewan.berat);
      print(muatanMobil);
    }
    else{
      print("Muatan tidak cukup");
    }
  }
}


void main(List<String> args) {
  var mobil = Mobil();
  print(mobil.totalMuatan());
  mobil.tambahMuatan();
}