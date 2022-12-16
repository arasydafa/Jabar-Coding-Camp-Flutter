void main() {
  //printMesage('Hello World', 'John', 'Mike');

  //print(sum(10.0, 20.0));
  //print(square(9.0));

  var total = 5;
  var output = "";

  for (var i = 1; i <= total; i++) {
    for (var j = 1; j <= i; j++) {
      output += j.toString() + "";
    }
    print(output);
    output;
  }

  print("\n");
  int i = 1;
  int j = 1;

  var panjang = 8;
  var lebar = 8;
  var papan = "";

  for (j = 1; j <= lebar; j++) {
    if (j % 2 == 1) {
      for (i = 1; i <= panjang; i++) {
        if (i % 2 == 1) {
          papan += " ";
        } else {
          papan += "#";
        }
      }
    } else {
      for (i = 1; i <= panjang; i++) {
        if (i % 2 == 1) {
          papan += "#";
        } else {
          papan += " ";
        }
      }
    }
    print(papan);

    papan = "";
  }

  print("\n");
  final add5 = makeAdder(5.0);
  final add7 = makeAdder(7.0);

  print(add5(6));
  print(add7(5));
}

void printMesage(String message, String from, [String to = 'unknown']) {
  print('"$message", from $from to $to');
}

double sum(double a, double b) {
  return a + b;
}

double square(double x) => x * x;

double add(double a, double b) => a + b;

Function makeAdder(double value) {
  return (x) => add(value, x);
}
