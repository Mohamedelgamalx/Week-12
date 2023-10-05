import 'dart:io';
import 'Branch.dart';

class Account extends Branch {
  String _accountName;
  double _balance;
  List _fees = ['dollar', 'euro', 'egp', 'sar', 'aed'];

  Account(this._accountName, this._balance);

  debitAccount(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print(
          "$_accountName debited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}");
    } else {
      print("Invalid debit amount or insufficient funds.");
    }
    print('----------------------------------');
  }

  creditAccount(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          "$_accountName credited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}");
    } else {
      print("Invalid credit amount.");
    }
    print('----------------------------------');
  }

  changeFees() {
    print('Which is type of fees do you have? :');
    print(_fees);
    String _answerOfHavingFees = stdin.readLineSync()!.toLowerCase();
    if (_answerOfHavingFees == 'egp') {
      print('Which is type of fees do you want to exchange to :');
      String _answerOfExchaning = stdin.readLineSync()!.toLowerCase();
      print('Write the amount of fees :');
      double _answerOfAmount =
          double.parse(stdin.readLineSync()!.toLowerCase());
      if (_answerOfExchaning == 'dollar') {
        _answerOfAmount *= 40;
        print(_answerOfAmount);
      } else if (_answerOfExchaning == 'sar') {
        _answerOfAmount *= 10;
        print(_answerOfAmount);
      } else if (_answerOfExchaning == 'euro') {
        _answerOfAmount *= 42;
        print(_answerOfAmount);
      } else if (_answerOfExchaning == 'aed') {
        _answerOfAmount *= 10.5;
        print('${_answerOfAmount} $_answerOfExchaning');
      }
    }
    print('----------------------------------');
  }
}
