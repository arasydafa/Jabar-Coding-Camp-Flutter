import "dart:io";

void main() {
  print("---------- No. 1 Looping While ----------");
  var max1 = 20;
  var i1 = 0;

  print("LOOPING PERTAMA");
  while (i1 <= max1) {
    print("$i1 - I love coding");
    i1 += 2;
  }

  print("LOOPING KEDUA");
  while (max1 > 0) {
    print("$max1 - I will become a mobile developer");
    max1 -= 2;
  }

  print("\n---------- No. 2 Looping menggunakan for ----------");
  for (int i2 = 0; i2 <= 20; i2++) {
    if (i2 % 2 != 0) {
      print("$i2 - Santai");

      if (i2 % 3 == 0) {
        print("$i2 - I Love Coding");
      }
    }
    if (i2 % 2 == 0) {
      print("$i2 - Berkualitas");
    }
  }

  print("\n---------- No. 3 Membuat Persegi Panjang # ----------");
  var p = 8;
  var l = 4;

  for (var i3 = 0; i3 < l; i3++) {
    for (var j3 = 0; j3 < p; j3++) {
      stdout.write("#");
    }
    stdout.write("\n");
  }

  print("\n---------- No. 4 Membuat Tangga  ----------");
  var t = 7;

  for (var i4 = 1; i4 <= t; ++i4) {
    for (var j4 = 1; j4 <= i4; ++j4) {
      stdout.write("#");
    }
    stdout.write("\n");
  }
}
