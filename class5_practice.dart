import 'dart:io';

void main() {
  // // question 1
  var facNum = 3;
  var factorial;
  print('Foactorial of $facNum! are:');
  for (var i = facNum - 1; i >= 1; i--) {
    factorial = facNum * i;
    print(factorial);
  }

  // // question 2
  for (var i = 1; i <= 4; i++) {
    for (var j = i; j <= i; j++) {
      print('$j' * i);
    }
  }

  // // question 3
  stdout.write('How many numbers you want to sum: ');
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (var i = 0; i < num; i++) {
    int userNum = int.parse(stdin.readLineSync()!);
    sum += userNum;
  }
  print('Total sum of your numbers are: $sum');

  // // question 4
  // // Add all list numbers in map/dictionary as key and find add their number of duplicates as value
  List numbers = [1, 3, 3, 7, 4, 3, 2, 3, 3, 7];
  Map<int, int> count = {};
  numbers.forEach((i) => count[i] = (count[i] ?? 0) + 1);
  var majority = count.keys.where((value) =>
        count[value] == count.values.reduce((curr, next) =>
          curr > next ? curr : next));
  print('$majority is in majority in list!');

  // question 5
  List<int> lst = [7, 9, 5, 11, 7, 4, 12, 6, 2, 11];
  var minDistance = 0;
  for (var i = 0; i < lst.length-1; i++) {
    if ((lst[i] - lst[i + 1]) < minDistance) {
      minDistance = (lst[i] - lst[i + 1]);
    }
  }
  print(minDistance);

  // question 6
  var char = '54';
  if (char.contains(RegExp(r'[A-Za-z]'))) {
    print('alphabet');
  } else if (char.contains(RegExp(r'[0-9]'))) {
    print('number');
  } else {
    print('Special Character');
  }
}
