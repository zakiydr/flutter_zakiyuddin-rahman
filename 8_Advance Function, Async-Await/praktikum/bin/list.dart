Future<void> kali() async {
  var list = [5, 10, 15, 20];
  var pengali = 5;
  
  await Future.delayed(Duration(seconds: 1), (){
  for (var dataList = 0; dataList < list.length; dataList ++){
    print(multiply(list[dataList], pengali));
    }
    });
}

void main() async {
  kali();
}

multiply(int data, int pengali){
  return data * pengali;
}