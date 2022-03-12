import 'dart:io';
void main() {
  // Question 3
  List lst1 = [1, 2, 3, 4, 5, 6, 7];
  List lst2 = [3, 5, 6, 7, 9, 10];

  print('First method');
  print(lst1.toSet().difference(lst2.toSet()).toList());

  List difference = lst1.where((element) => !lst2.contains(element)).toList();
  print('\nSecond method');
  print(difference);

// Question 4
  int a = 5;
  int b = 7;
  // ?
  var c = (a < b) ? 'Correct' : 'Wrong';
  print(c);
  // ??
  var n = null;
  var d = n ?? 'n has null value';
  print(d);
  // ??
  n = 10;
  d = n ?? 'n has Null value';
  print(d);

  // Question 6
  var times = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final table = Map.fromIterable(times, key: (item) => item, value: (item) => item * 7);
  table.forEach((key, value) {print('7 x $key = $value');});

  // Question 7
  String pass = 'Flutter';
  print('Enter password: ');
  String? userPass = stdin.readLineSync();

  if (userPass == pass) {
    print('Correct password!');
  } 
  else if (userPass == '') {
    print('Please enter your password.');
  } 
  else {
    print('Wrong password!');
  }

  // Question 8
  List students = ['Ali', 'Nawaz', 'Raheel'];
  var marks = [443, 409, 380];
  int total = 500;
  print('Name      | Score  | Percentage');
  for (int i = 0; i < students.length; i++) {
    double per = (marks[i] * 100) / total;
    print('${students[i]}       | ${marks[i]}    | $per%');
  }

  // Question 10
  String city = 'Islamabad';
  String newCity = city.replaceAll('Islam', 'Hyder');
  print('Old city: $city');
  print('new city: $newCity');

  // Question 11
  int units = 158;
  double unitPrice = 10.57;
  double netAmmount = units * unitPrice;
  int latePay = 250;
  double grossPay = netAmmount + latePay;
  print('Customer name: Tehseen Mukhtiar');
  print('Current month: March');
  print('Number of units: $units');
  print('Charges per unit: $unitPrice');
  print('Net Amount Payable (within Due Date): ${netAmmount.toStringAsFixed(2)}');
  print('Late Payment Surcharge: $latePay');
  print('Gross Amount Payable (after Due Date): ${grossPay.toStringAsFixed(2)}');
  
  // Question 12
  var now = DateTime.now();
  var day = (now.day <= 15)
      ? 'First fifteen days of the month'
      : 'Last fifteen days of the month';
  print(day);

  // Question 13
  // Methods of List
  var lst = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print('Original list: $lst');
  
  print('Sub list: ${lst.sublist(3, 6)}'); // 1st method
  
  lst.shuffle(); // 2nd method
  print('Shuffled list: $lst');
  
  var mixList = [1, "a", 2, "b", 3, "c", 4, "d"];
  var num = mixList.whereType<int>(); // 3rd method
  print(num);
  
  List<String> sports = ['cricket', 'football', 'tennis', 'baseball'];
  Map map = sports.asMap(); // 4th method
  print(map);
  
  var newList = [1,2,3,4,5,6];
  print(newList.where((i) => i < 4)); //5th method

  // Methods of String
  String sentence = ' this is some sentence ';
  
  print(sentence.toUpperCase()); // 1st method
  print(sentence.toLowerCase()); // 2nd method
  print(sentence.trim()); //3rd method
  print(sentence.replaceAll('some', 'a')); // 4th method
  print(sentence.substring(9)); // 5th method
}
