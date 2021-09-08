import 'bangun_datar.dart';
import 'dart:math';

class lingkaran extends bangun_datar {
  late double r;

  lingkaran(double r) {
    this.r = r;
  }

  @override 
  double luas() {
    return pi * r * r;
  }

  @override
  double keliling() {
    return 2 * pi * r;
  }
}