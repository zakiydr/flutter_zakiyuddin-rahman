void main(List<String> args) {
  var peserta = [['nama', 'Zaki'], ['umur', 20]];
  var map = {};
  for (var i = 0; i < peserta.length; i++) {
    map[peserta[i][0]] = peserta[i][1];
  }
  print(map);
}