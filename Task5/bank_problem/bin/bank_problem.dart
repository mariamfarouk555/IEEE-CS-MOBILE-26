import 'dart:io';
import 'bankaccount.dart';
import 'client.dart';

void main() {
  stdout.write("Enter Client Number: ");
  int clientNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Client Name: ");
  String clientName = stdin.readLineSync()!;

  Client client = Client(clientNumber, clientName);

  BankAccount acc1 = BankAccount("73740192", "Current", 25000, "EGP");

  BankAccount acc2 = BankAccount("73700438", "Saving", 1800, "USD");

  client.addAccount(acc1);
  client.addAccount(acc2);

  acc1.deposit(1500);

  acc2.withdraw(5000);

  acc2.withdraw(300);

  print("\n -: Final Data :-\n");

  client.displayClientInfo();
}
