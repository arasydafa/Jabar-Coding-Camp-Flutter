import 'bangun_datar.dart';

class segitiga extends bangun_datar {
  late double alas;
  late double tinggi;
  late double a, b, t;

  segitiga(double alas, double tinggi, double a, double b, double t) {
    this.alas = alas;
    this.tinggi = tinggi;
    this.a = a;
    this.b = b;
    this.t = t;
  }

  @override 
  double luas() {
    return (alas * tinggi) / 2;
  }

  @override
  double keliling() {
    return a + b + t;
  }
}