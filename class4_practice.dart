void main() {
  // Find Second largest and Second smallest
  List<int> numbers = [4, 9, 16, 25, 36, 2, 49, 64, 91, 100, 84];
  var smallest = numbers[0];
  var largest = numbers[0];
  var SecondLargest = numbers[0];
  var SecondSmallest = numbers[0];

  for (var num in numbers) {
    if (num < smallest) {
      smallest = num;
    }
    else if (num > largest) {
      largest = num;
    }
    else if (num != largest) {
      SecondLargest = num;
    }
    else if (num < smallest && num != smallest) {
      SecondSmallest = num;
    }
  }
  print('$largest is the largest number');
  print('$smallest is the smallest number');
  print('$SecondLargest is the second largest');
  print('$SecondSmallest is the second smallest');

  // int i = 0;
  // while (i == 5) {
  //   print(i);
  //   i++;
  // }
}
