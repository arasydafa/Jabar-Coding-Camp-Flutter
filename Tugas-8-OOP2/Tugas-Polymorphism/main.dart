import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'segitiga.dart';
import 'persegi.dart';

void main() {
  bangun_datar bg = new bangun_datar();
  segitiga st = new segitiga(5, 2, 3, 4, 6);
  lingkaran lk = new lingkaran(4);
  persegi ps = new persegi(5);

  bg.luas_keliling();

  // SEGITIGA
  print("\n----- SEGITIGA -----");
  print("Luas : ${st.luas()}");
  print("Keliling : ${st.keliling()}");

  // LINGKARAN
  print("\n----- LINGKARAN -----");
  print("Luas : ${lk.luas()}");
  print("Keliling : ${lk.keliling()}");

  // PERSEGI
  print("\n----- PERSEGI -----");
  print("Luas : ${ps.luas()}");
  print("Keliling : ${ps.keliling()}");
}