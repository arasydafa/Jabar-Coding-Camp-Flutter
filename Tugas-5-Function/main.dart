void main() {
  print("---------- No. 1 ----------");
  print(teriak());

  print("\n---------- No. 2 ----------");
  var num1 = 12;
  var num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  print("\n---------- No. 3 ----------");
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";
  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  print("\n---------- No. 4 ----------");
  var num = 6;
  var faktor = faktorial(num);
  print("$num! = $faktor");
}

teriak() {
  return "Halo Sanbers!";
}

kalikan(num1, num2) {
  return num1 * num2;
}

introduce(name, age, address, hobby) {
  return "Nama saya $name, umur saya $age tahun, alamat saya di $address dan saya punya hobby yaitu $hobby!";
}

faktorial(num) {
  if (num <= 0) {
    return 1;
  } else {  
    return num * faktorial(num - 1);
  }
}
