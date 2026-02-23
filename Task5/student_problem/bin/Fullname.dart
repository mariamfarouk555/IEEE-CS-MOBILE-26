class FullName {
  String _firstName = '';
  String _middleName = '';
  String _surname = '';

  void setFirstName(String firstName) {
    _firstName = firstName;
  }

  void setMiddleName(String middleName) {
    _middleName = middleName;
  }

  void setSurname(String surname) {
    _surname = surname;
  }

  String getFirstName() {
    return _firstName;
  }

  String getMiddleName() {
    return _middleName;
  }

  String getSurname() {
    return _surname;
  }

  @override
  String toString() {
    return '$_firstName $_middleName $_surname';
  }
}
