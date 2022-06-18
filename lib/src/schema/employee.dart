import 'package:isar/isar.dart';

part 'employee.g.dart';

@Collection()
class Employee {
  @Id()
  @Name("isarId")
  int? isarId;

  @Name("employeeName")
  String employeeName;

  Employee({required this.employeeName});
}