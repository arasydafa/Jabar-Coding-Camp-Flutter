void main() {
  print("---------- No. 1 - Range ----------");
  print(range(1, 10));
  print(range(11, 18));
  print(range(7, 2));

  print("\n---------- No. 2 - Range with Step ----------");
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));

  print("\n---------- No. 3 - List Multidimensi ----------");
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];
  print(dataHandling(input));

  print("\n---------- No. 4 - Balik Kata ----------");
  print(balikKata("Kasur"));
  print(balikKata("SanberCode"));
  print(balikKata("Haji"));
  print(balikKata("racecar"));
  print(balikKata("Sanbers"));
}

range(startNum, finishNum) {
  List<int> list = [];

  if (startNum < finishNum) {
    for (var i = startNum; i <= finishNum; i++) {
      list.add(i);
    }
  } else if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i--) {
      list.add(i);
    }
  }
  return list;
}

rangeWithStep(startNum, finishNum, step) {
  List<int> list = [];

  if (startNum < finishNum) {
    for (var i = startNum; i <= finishNum; i += step) {
      list.add(i);
    }
  } else if (startNum > finishNum) {
    for (var i = startNum; i >= finishNum; i -= step) {
      list.add(i);
    }
  }
  return list;
}

dataHandling(input) {
  var data = 0;
  var hasil = "";
  for (data; data < input.length; data++) {
    hasil += "Nomor ID = ${input[data][0]} \n" +
          "Nama Lengkap = ${input[data][1]} \n" +
          "TTL = ${input[data][2]}" + " " + "${input[data][3]} \n" +
          "Hobi = ${input[data][4]} \n\n";
  }
  return hasil;
}

balikKata(kata) {
  // METODE PERTAMA MENGGUNAKAN STRING
  // var balik = "";
  // for (var i = kata.length - 1; i >= 0; --i) {
  //   balik += kata[i];
  // }
  // return balik;

  // METODE KEDUA MENGGUNAKAN LIST (SESUAI DENGAN MATERI DAN TUGAS)
  var balik = [];
  for (var i = kata.length - 1; i >= 0; --i) {
    balik.add(kata[i]);
  }
  return balik.join();
}
