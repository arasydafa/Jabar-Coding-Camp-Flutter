import "dart:io";

void main() {
  // Ternary Operator
  print("----------- SOAL 1 -----------");

  stdout.write("Apakah Anda ingin menginstal aplikasi : ");
  var respon = stdin.readLineSync();

  respon == "y" || respon == "Y"
      ? print("Anda akan menginstall aplikasi Dart")
      : respon == "t" || respon == "T"
          ? print("Aborted")
          : null;

  // If-else if dan else
  print("\n----------- SOAL 2 -----------");

  stdout.write("Masukkan namamu : ");
  var nama = stdin.readLineSync();

  stdout.write("Masukkan peranmu : ");
  var peran = stdin.readLineSync();

  if (nama == null && peran == null) {
    print("Apabila kosong semua Nama harus diisi!");
  } else if (peran == null) {
    print("Halo $nama, pilih peranmu untuk mulai game ");
  } else if (peran == "Penyihir" || peran == "penyihir") {
    print(
        "Selamat datang di Dunia Werewolf $nama. Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
  } else if (peran == "Guard" || peran == "guard") {
    print(
        "Selamat datang di Dunia Werewolf $nama. Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  } else if (peran == "Werewolf" || peran == "werewolf") {
    print(
        "Selamat datang di Dunia Werewolf $nama. Halo Werewolf $nama, kamu akan memakan mangsa setiap malam!");
  }

  // Switch case
  print("\n----------- SOAL 3 -----------");

  stdout.write("Masukkan hari : ");
  var inputHari = stdin.readLineSync();

  switch (inputHari) {
    case "Senin":
    case "senin":
      print(
          "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
      break;
    case "Selasa":
    case "selasa":
      print(
          "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case "Rabu":
    case "rabu":
      print(
          "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      break;
    case "Kamis":
    case "kamis":
      print(
          "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      break;
    case "Jumat":
    case "jumat":
      print("Hidup tak selamanya tentang pacar.");
      break;
    case "Sabtu":
    case "sabtu":
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      break;
    case "Minggu":
    case "minggu":
      print(
          "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      break;
    default:
      print("Masukkan hari salah");
  }

  // Switch case
  print("\n----------- SOAL 4 -----------");

  var hari = 11;
  var bulan = 6;
  var tahun = 2021;

  if (1 >= hari || hari <= 31) {
    if (1900 >= tahun || tahun <= 2200) {
      if (1 >= bulan || bulan <= 12) {
        switch (bulan) {
          case 1:
            print("$hari Januari $tahun");
            break;
          case 2:
            print("$hari Februari $tahun");
            break;
          case 3:
            print("$hari Maret $tahun");
            break;
          case 4:
            print("$hari April $tahun");
            break;
          case 5:
            print("$hari Mei $tahun");
            break;
          case 6:
            print("$hari Juni $tahun");
            break;
          case 7:
            print("$hari Juli $tahun");
            break;
          case 8:
            print("$hari Agustus $tahun");
            break;
          case 9:
            print("$hari September $tahun");
            break;
          case 10:
            print("$hari Oktober $tahun");
            break;
          case 11:
            print("$hari November $tahun");
            break;
          case 12:
            print("$hari Desember $tahun");
            break;
          default:
            ("Tanggal tidak valid");
        }
      } else {
        print("Bulan salah");
      }
    } else {
      print("Tahun salah");
    }
  } else {
    print("Hari salah");
  }
}
