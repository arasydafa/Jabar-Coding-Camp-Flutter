import 'segitiga.dart';

void main(List<String> args) {
  Segitiga segitiga = new Segitiga();

  double luas;

  segitiga.setengah = 5;
  segitiga.alas = 20.0;
  segitiga.tinggi = 30.0;

  luas = segitiga.hitungLuas();
  print("Luas Segitiga : $luas");
}
