import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  armor_titan armor = armor_titan();
  attack_titan attack = attack_titan();
  beast_titan beast = beast_titan();
  human hum = human();

  armor.powerPoint = 7;
  attack.powerPoint = 8;
  beast.powerPoint = 9;
  hum.powerPoint = 4;

  print("----- ARMOR TITAN -----");
  print("Level Point : ${armor.powerPoint}");
  print("Sifat : ${armor.terjang()}");

  print("\n----- ATTACK TITAN -----");
  print("Level Point : ${attack.powerPoint}");
  print("Sifat : ${attack.punch()}");

  print("\n----- BEAST TITAN -----");
  print("Level Point : ${beast.powerPoint}");
  print("Sifat : ${beast.lempar()}");

  print("\n----- HUMAN -----");
  print("Level Point : ${hum.powerPoint}");
  print("Sifat : ${hum.killAlltitan()}");
}
