void main() {
  String studentName = 'Tehseen Mukhtiar';

  num english = 83;
  num urdu = 86;
  num math = 79;
  num physics = 75;
  num chemistry = 82;

  num obtMarks = english + urdu + math + physics + chemistry;
  int totalMarks = 500;

  num percentage = (obtMarks * 100) / totalMarks;
  String grade;
  // for grades
  if (percentage >= 80) {
    grade = 'A+';
  } else if (percentage >= 70) {
    grade = 'A';
  } else if (percentage >= 60) {
    grade = 'B';
  } else if (percentage >= 50) {
    grade = 'C';
  } else {
    grade = 'F';
  }

  print('       MARK SHEET\n');
  print('Name: $studentName');
  print('Roll number: 25515\n');
  print('  Subject  |   Marks');
  print('----------------------');
  print('English    |    $english');
  print('Urdu       |    $urdu');
  print('Math       |    $math');
  print('Physics    |    $physics');
  print('Chemistry  |    $chemistry');
  print('----------------------');
  print('Total Marks: $obtMarks/$totalMarks');
  print('Percentage: $percentage%');
  print('Grade: $grade');
}
