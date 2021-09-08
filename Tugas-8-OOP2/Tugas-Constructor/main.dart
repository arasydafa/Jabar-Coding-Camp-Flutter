import 'employee.dart';

void main() {
  var id = new employee.id(175);
  var name = new employee.name("Arasy Dafa S.K.");
  var dep = new employee.department("Teknik Elektro");

  print("NIM : ${id.id}");
  print("Name : ${name.name}");
  print("Department : ${dep.department}");
}