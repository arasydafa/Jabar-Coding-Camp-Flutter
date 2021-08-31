import "dart:io";

void main() {
  // Soal No. 1 (Membuat kalimat)
  print("----------- SOAL 1 -----------");

  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  print("$word $second $third $fourth $fifth $sixth $seventh");

  // Soal No.2 Mengurai kalimat (Akses karakter dalam string)
  print("\n----------- SOAL 1 -----------");

  var sentence = "I am going to be Flutter Developer";

  var split = sentence.split(" ");

  print('First Word: ' + split[0]);
  print('Second Word: ' + split[1]);
  print('Third Word: ' + split[2]);
  print('Fourth Word: ' + split[3]);
  print('Fifth Word: ' + split[4]);
  print('Sixth Word: ' + split[5]);
  print('Seventh Word: ' + split[6]);

  //  Dengan menggunakan I/O pada dart buatlah input dinamis yang akan menginput nama depan dan belakang dan jika di enter akan menggabungkan nama depan dan belakang
  print("\n----------- SOAL 3 -----------");

  stdout.write("Masukkan Nama Depan : ");
  String? namaDepan = stdin.readLineSync();

  stdout.write("Masukkan Nama Belakang : ");
  String? namaBelakang = stdin.readLineSync();

  print("nama lengkap Anda adalah : $namaDepan $namaBelakang");

  //Dengan menggunakan operator operasikan variable berikut ini menjadi bentuk operasi perkalian, penjumlahan, pengurangan dan pembagian a = 5,  b = 10 jadi misal a * b = 5 * 10 = 50 dst.
  print("\n----------- SOAL 4 -----------");

  stdout.write("Masukkan angka pertama : ");
  int angkaPertama = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua : ");
  int angkaKedua = int.parse(stdin.readLineSync()!);

  print("Perkalian : ${angkaPertama * angkaKedua}");
  print("Pembagian : ${angkaPertama / angkaKedua}");
  print("Penambahan : ${angkaPertama + angkaKedua}");
  print("Pengurangan : ${angkaPertama - angkaKedua}");
}
