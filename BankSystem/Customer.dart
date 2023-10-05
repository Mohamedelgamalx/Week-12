// ignore_for_file: unused_local_variable, unused_field
import 'dart:io';
import 'Loan.dart';

class Customer extends Loan {
  late String _customerName;
  late String _phoneNumber;

  Customer(super.accountName, super.balance, this._phoneNumber);

  addAccount() {
    print('Enter your full name ,sir?');
    String _answerOfname = stdin.readLineSync()!;
    print('Enter your national id ,sir?');
    int _answerOfId = int.parse(stdin.readLineSync()!);
    print('Enter your e-mail@elgamalbank.banchDepartment.eg ,sir?');
    String _answerOfEmail = stdin.readLineSync()!;
    print('Enter your personal password ,sir?');
    String _answerOfPassword = stdin.readLineSync()!;
    print('----------------------------------');

    print(
        'Your information are :\nName : $_answerOfname\nNational ID : $_answerOfId\nE-mail : $_answerOfEmail');
    print('----------------------------------');
  }

  @override
  getLoan() {
    return super.getLoan();
  }

  @override
  creditAccount(double amount) {
    return super.creditAccount(amount);
  }

  @override
  debitAccount(double amount) {
    return super.debitAccount(amount);
  }

  @override
  changeFees() {
    return super.changeFees();
  }
}
