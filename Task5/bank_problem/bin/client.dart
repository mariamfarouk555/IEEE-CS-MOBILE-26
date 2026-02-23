import 'bankaccount.dart';

class Client {
  int clientNumber;
  String clientName;
  List<BankAccount> accounts = [];

  Client(this.clientNumber, this.clientName);

  void addAccount(BankAccount account) {
    accounts.add(account);
  }

  void displayClientInfo() {
    print("Client Number: $clientNumber");
    print("Client Name: $clientName");
    print("Account Details:");
    print("------------------------------------------------------------");

    for (var account in accounts) {
      account.displayAccountInfo();
    }
  }
}
