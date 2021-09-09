main(List<String> args) {
  print("Life");
  delay(3, "never flat").then((data) {
    print(data);
  });
  print("is");
}

Future delay(detik, string) {
  final waktu = Duration(seconds: detik);
  return Future.delayed(waktu).then ((value) => string);
}