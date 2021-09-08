import 'bangun_datar.dart';

class persegi extends bangun_datar {
  late double sisi;

  persegi(double sisi) {
    this.sisi = sisi;
  }

  @override 
  double luas() {
    return sisi * sisi;
  }

  @override
  double keliling() {
    return 4 * sisi;
  }
}