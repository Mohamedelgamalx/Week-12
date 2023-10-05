// ignore_for_file: unused_field
import 'dart:io';
import 'Bank.dart';

class Branch extends Bank {
  List _departmentsInBranch = [
    'Administration',
    'Supervising',
    'IT',
    'Workers',
    'Secretary',
    'Technical Support',
    'Staff'
  ];

  getDepatment() {
    print('Which is depatment you are in it? ');
    print(_departmentsInBranch);
    String _answer = stdin.readLineSync()!;
    print('Congratulations, you are in $_answer department');
    print('----------------------------------');
  }
}
