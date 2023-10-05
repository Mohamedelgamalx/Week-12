import 'dart:io';

class Bank {
  String _bankName = 'Elgamal Bank';
  List<String> _bankBranchs = ['Cairo', 'Giza', 'Alexandria'];
  List<String> _egyptCities = [
    'Assiut',
    'Aswan',
    'Beheira',
    'Bani Suef',
    'Dakahlia',
    'Damietta',
    'Fayyoum',
    'Gharbiya',
    'Helwan',
    'Ismailia',
    'Kafr El Sheikh',
    'Luxor',
    'Marsa Matrouh',
    'Monofiya',
    'Minya',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalioubiya',
    'Qena',
    'Red Sea',
    'Sharqiya',
    'Sohag',
    'South Sinai',
    'Suez',
    'Tanta'
  ];
  late String _answerOfAddingBranch;
  late String _answerOfRemovingBranch;

  addBranch() {
    print('Which is the place do you to add banch of ${_bankName} ,sir?');
    print(_egyptCities);
    _answerOfAddingBranch = stdin.readLineSync()!;
    _bankBranchs.add(_answerOfAddingBranch);
    print(_bankBranchs);
    print('----------------------------------');
  }

  removeBranch() {
    print('Which is the banch do you want to remove ,sir?');
    print(_bankBranchs);
    _answerOfRemovingBranch = stdin.readLineSync()!;
    _bankBranchs.remove(_answerOfRemovingBranch);
    print(_bankBranchs);
    print('----------------------------------');
  }

  getAllBranches() {
    print('All bank branchs are : ${_bankBranchs}');
  }
}
