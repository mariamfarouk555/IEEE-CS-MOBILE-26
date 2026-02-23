import 'Fullname.dart';
import 'Student.dart';
import 'StudentEvent.dart';
import 'postgraduate.dart';
import 'undergraduate.dart';

void main() {
  FullName ugName = FullName();
  ugName.setFirstName('Mariam');
  ugName.setMiddleName('Farouk');
  ugName.setSurname('Salama');

  Undergraduate undergraduate = Undergraduate();
  undergraduate.setRegistrationNumber('UG/123');
  undergraduate.setFullName(ugName);
  undergraduate.setMarks([95, 88, 76, 69]);

  FullName pgName = FullName();
  pgName.setFirstName('Sara');
  pgName.setMiddleName('Ahmed');
  pgName.setSurname('Omar');

  Postgraduate postgraduate = Postgraduate();
  postgraduate.setRegistrationNumber('PG/456');
  postgraduate.setFullName(pgName);
  postgraduate.setMarks([98, 44, 56, 41]);

  undergraduate.printInfo();
  print("----------------------------------------------------------------");
  postgraduate.printInfo();
}
