class BankAccount {
  String accountNumber;
  String accountType;
  double balance;
  String currency;

  BankAccount(
    this.accountNumber,
    this.accountType,
    this.balance,
    this.currency,
  );

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Transaction declined! $accountNumber");
    }
  }

  void displayAccountInfo() {
    print("Account Number: $accountNumber");
    print("Account Type: $accountType");
    print("Balance: $balance $currency");
    print(
      "----------------------------------------------------------------------",
    );
  }
}
