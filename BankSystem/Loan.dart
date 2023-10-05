import 'dart:io';
import 'Account.dart';

class Loan extends Account {
  List _loanTypes = [
    'Personal Loans',
    'Auto Loans',
    'Student Loans',
    'Mortgage Loans',
    'Home Equity Loans',
    'Credit-Builder Loans',
    'Debt Consolidation Loans',
    'Payday Loans'
  ];
  late String _answerLoan;

  Loan(super.accountName, super.balance);

  getLoan() {
    print('Which loan do you want ?');
    print(_loanTypes);
    _answerLoan = stdin.readLineSync()!;
    print('Loan: $_answerLoan');
    print('----------------------------------');
  }
}
