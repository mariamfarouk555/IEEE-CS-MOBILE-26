import 'Student.dart';
import 'StudentEvent.dart';

class Undergraduate extends Student implements StudentEvent {
  double _pointsForMark(double mark) {
    if (mark >= 95 && mark <= 100) return 12;
    if (mark >= 90) return 11.5;
    if (mark >= 85) return 11;
    if (mark >= 80) return 10;
    if (mark >= 75) return 9;
    if (mark >= 70) return 8;
    if (mark >= 65) return 7;
    if (mark >= 60) return 6;
    if (mark >= 56) return 5;
    if (mark >= 53) return 4;
    if (mark >= 50) return 3;
    return 0;
  }

  @override
  double calcGPA() {
    double totalPoints = 0;
    for (var mark in getMarks()) {
      totalPoints += _pointsForMark(mark);
    }
    if (getMarks().isEmpty) return 0;
    return totalPoints / (getMarks().length * 3);
  }

  @override
  void printInfo() {
    print('Registration Number: ${getRegistrationNumber()}');
    print('Full Name: ${getFullName()}');
    print('Marks: ${getMarks()}');
    print('GPA: ${calcGPA()}');
  }
}
