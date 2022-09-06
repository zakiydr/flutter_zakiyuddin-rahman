Future multiply(angkaDikali, angkaPengali) async {
  List <int> data = [];
  Future.delayed(Duration(seconds: 1), (){
    for (var i in angkaDikali){
      data.add(i * angkaPengali);
    }
    return data;
    });
}

void main() async {
  List<int> list = [5, 10, 15, 20];
  int pengali = 5;
  print(list);
  List<int> listBaru = await multiply(list, pengali);
  print(listBaru);
}