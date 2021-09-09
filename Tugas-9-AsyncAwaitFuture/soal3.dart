void main(List<String> args) async {
  print("Ready. Sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async {
  String string = "pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 5), () => (string));
}

Future<String> line2() async {
  String string = "pernahkah kau merasa.....";
  return await Future.delayed(Duration(seconds: 3), () => (string));
}

Future<String> line3() async {
  String string = "pernahkah kau merasa";
  return await Future.delayed(Duration(seconds: 2), () => (string));
}

Future<String> line4() async {
  String string = "Hatimu hampa, pernahkah kau merasa hati mu kosong....";
  return await Future.delayed(Duration(seconds: 1), () => (string));
}
