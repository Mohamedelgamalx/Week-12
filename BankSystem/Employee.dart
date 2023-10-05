// ignore_for_file: unused_field
import 'dart:io';
import 'Branch.dart';

class Emloyee extends Branch {
  late String _answerOfname;
  late String _answerOfEmail;
  late String _answerOfPassword;
  late int _answerOfId;

  @override
  getDepatment() {
    return super.getDepatment();
  }

  addAccount() {
    print('Enter your full name ,sir?');
    _answerOfname = stdin.readLineSync()!;
    print('Enter your national id ,sir?');
    _answerOfId = int.parse(stdin.readLineSync()!);
    print('Enter your e-mail@elgamalbank.banchDepartment.eg ,sir?');
    _answerOfEmail = stdin.readLineSync()!;
    print('Enter your personal password ,sir?');
    _answerOfPassword = stdin.readLineSync()!;
    print(
        'Your information are :\nName : $_answerOfname\nNational ID : $_answerOfId\nE-mail : $_answerOfEmail');
    print('----------------------------------');
  }

  removeAccount() {
    print('Enter your e-mail@elgamalbank.eg ,sir?');
    _answerOfEmail = stdin.readLineSync()!;
    print('Enter your personal password ,sir?');
    _answerOfPassword = stdin.readLineSync()!;
    print('Now!! you are deleted your account');
    print('----------------------------------');
  }
}
