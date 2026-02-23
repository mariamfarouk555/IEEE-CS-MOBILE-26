import 'Fullname.dart';

class Student {
  String _registrationNumber = '';
  FullName _fullName = FullName();
  List<double> _marks = [];

  void setRegistrationNumber(String registrationNumber) {
    _registrationNumber = registrationNumber;
  }

  void setFullName(FullName fullName) {
    _fullName = fullName;
  }

  void setMarks(List<double> marks) {
    _marks = marks;
  }

  String getRegistrationNumber() {
    return _registrationNumber;
  }

  FullName getFullName() {
    return _fullName;
  }

  List<double> getMarks() {
    return _marks;
  }
}
