import 'dart:math';

class BankAccount {
  String accountTitle;
  double accountBalance;
  List<Transaction>? transactions = [];

  BankAccount({accountTitle, accountBalance})
      : accountTitle = accountTitle,
        accountBalance = accountBalance;

  void deposit(double amount) {
    var rng = new Random();
    accountBalance += amount;
    transactions!.add(Transaction(
        transactionDate: DateTime.now(),
        type: TRANSACTION_TYPE.DEBIT,
        transactionAmount: amount,
        id: rng.nextInt(100)));
  }

  void withdraw(double amount) {
    var rng = new Random();
    transactions!.add(Transaction(
        transactionDate: DateTime.now(),
        type: TRANSACTION_TYPE.CREDIT,
        transactionAmount: amount,
        id: rng.nextInt(100)));
    accountBalance -= amount;
  }

  String getBalance() {
    return 'My account balance is $accountBalance';
  }

  String getAccountTitle() {
    return 'Title of my account is $accountTitle';
  }

  void printTransactions() {
    if (transactions == null || transactions?.length == 0) {
      print("No Transactions");
      return;
    }
    print("The transactions are:");
    for (Transaction transaction in transactions!) {
      print(
          "transaction id ${transaction.id} amount ${transaction.transactionAmount} ${transaction.type.toString()}");
    }
  }
}

class Transaction {
  late int id;
  late DateTime transactionDate;
  late TRANSACTION_TYPE type;
  late double transactionAmount;
  Transaction({transactionDate, type, transactionAmount, id})
      : transactionDate = transactionDate,
        transactionAmount = transactionAmount,
        type = type,
        id = id;
}

enum TRANSACTION_TYPE { DEBIT, CREDIT }
void main(List<String> arguments) {
  BankAccount newBank =
      BankAccount(accountTitle: 'Tahir Ali Khan', accountBalance: 0.0);

  print(newBank.getAccountTitle());
  print(newBank.getBalance());
  newBank.printTransactions();
  newBank.deposit(50);

  print(newBank.getBalance());

  newBank.printTransactions();
}
