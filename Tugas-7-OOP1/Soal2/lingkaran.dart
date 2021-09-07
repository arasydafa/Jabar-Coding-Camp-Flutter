class Lingkaran {
  late double _jari;
  final double phi = 3.14;

  void set jari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _jari = value;
  }

  double get jari {
    return _jari;
  }

  double get luas => _jari * _jari * phi;
}
