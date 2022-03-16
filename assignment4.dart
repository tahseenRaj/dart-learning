import 'dart:io';
import 'dart:math';

void main() {
  // Question 1
  // First Method (Manually check for repeating items)
  print('Question 1');
  List names = ['Bilal', 'Bilal', 'Bilal', 'Owais', 'Owais', 'Owais'];
  List<dynamic> uniqueNames = [];
  for (var i = 0; i < names.length; i++) {
    if (!uniqueNames.contains(names[i])) {
      uniqueNames.add(names[i]);
    }
  }
  print('1st Method: $uniqueNames');

  // Second Method (using function)
  names = names.toSet().toList();
  print('2nd Method: $names');

  // Question 2
  print('\nQuestion 2 -- Find even number');
  List numbers = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List evenNumbers = [];
  numbers.forEach((element) {
    if (element % 2 == 0) evenNumbers.add(element);
  });
  print('Even number list: $evenNumbers');

  // Question 3
  print('\nQuestion 3 -- Find prime number');
  print('Enter Integer number: ');
  var num = int.parse(stdin.readLineSync()!);
  var result = true;
  for (var i = 2; i <= num / i; ++i) {
    if (num % i == 0) {
      result = false;
    }
  }
  print('$num is a ${result ? 'prime number' : 'not a prime number'}');

  // Question 4
  print('\nQuestion 4 -- Print table of 7');
  int tableNum = 7;
  for (var i = 1; i <= 15; i++) {
    print('$tableNum x $i = ${tableNum * i}');
  }

  // Question 5
  print('\nQuestion 5 -- Print list items using for loop');
  List fruits = ['apple', 'banana', 'mango', 'orange', 'strawberry'];
  // 1st method
  for (var fruit in fruits) {
    print(fruit);
  }
  print('--------------------');
  // 2nd method
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  // Question 6
  print('\nQuestion 6 -- Multiple of 5 ranging 1 to 100');
  List multipleOf = [];
  for (var i = 1; i <= 100; i++) {
    if (i % 5 == 0) {
      multipleOf.add(i);
    }
  }
  print('Multiples of 5 are: $multipleOf');

  // Question 7
  print('\nQuestion 7 -- Temperature converter');
  var tempInCelsius = 39;
  var tempInFahrenheit = 100;
  var toFahrenheit = ((tempInCelsius * 1.8) + 32).round();
  var toCelsius = ((tempInFahrenheit - 32) * 0.5556).round();
  print('$tempInCelsius\u{00B0}C is $toFahrenheit\u{00B0}F');
  print('$tempInFahrenheit\u{00B0}F is $toCelsius\u{00B0}C');

  // Question 8
  print('\nQuestion 8 -- Calculator');
  print('Enter first integer number');
  int firstNum = int.parse(stdin.readLineSync()!);
  print('Enter second integer number');
  int SecondNum = int.parse(stdin.readLineSync()!);
  print('Which operation do you want to perform: +, -, *, /, %');
  var operation = stdin.readLineSync();
  if (operation == '+') {
    print('$firstNum + $SecondNum = ${firstNum + SecondNum}');
  } else if (operation == '-') {
    print('$firstNum - $SecondNum = ${firstNum - SecondNum}');
  } else if (operation == '*') {
    print('$firstNum * $SecondNum = ${firstNum * SecondNum}');
  } else if (operation == '/') {
    print('$firstNum / $SecondNum = ${firstNum / SecondNum}');
  } else if (operation == '%') {
    print('$firstNum % $SecondNum = ${firstNum % SecondNum}');
  }

  // Question 9
  print('\nQuestion 9 -- Vowel');
  print('Enter a character from (a to z)');
  String isVowel = stdin.readLineSync()!;
  if (isVowel.length > 1) {
    print('Please enter just one character from (a to z)!');
  } else if (isVowel == 'a' ||
      isVowel == 'e' ||
      isVowel == 'i' ||
      isVowel == 'o' ||
      isVowel == 'u') {
    print('$isVowel is vowel.');
  } else {
    print('$isVowel is not vowel.');
  }

  // Question 10
  print('\nQuestion 10 -- Reverse string');
  String mySentence = 'natsikaP nawaJ';
  print(mySentence.split('').reversed.join(''));

  // Question 11
  print('\nQuestion 11 -- Remove duplicated from list');
  List nameList = ['Ahmed', 'Bilal', 'Muhammad', 'Owais', 'Muhammad', 'Ali', 'Ahmed'];
  nameList = nameList.toSet().toList();
  print(nameList);

  // Question 12
  print('\nQuestion 12 -- Find missing number from list');
  List numList = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, 41, 42, 45, 46, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 92, 93, 94, 95, 96, 98, 99, 100];
  List missingNum = [];
  for (var i = 1; i <= numList.length; i++) {
    if (!numList.contains(i)) missingNum.add(i);
  }
  print('Missing numbers are: $missingNum');


  // Question 13
  print('\nQuestion 13 -- Find smallest and largest number in list');
  List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];
  print('Smallest number: ${unsortedList.reduce(min)}');
  print('Largest number: ${unsortedList.reduce(max)}');

  
  // Question 14
  print('\nQuestion 14 -- Find all pairs of an integer array whose sum is equal to given number');
  int sum = 18;
  List pairs = [];
  for (int i = 0; i < numList.length; i++) {
    for (int j = i + 1; j < numList.length; j++) {
      if (numList[i] + numList[j] == sum) {
        pairs.add([numList[i], numList[j]]);
      }
    }
  }
  print('These pairs are the sum of $sum: \n$pairs');

}
