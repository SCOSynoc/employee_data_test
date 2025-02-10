


import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

part 'employee.g.dart';

@freezed
class Employee with _$Employee {

  const factory Employee({
    required String id,
    required String name,
    required String role,
    required String fromDate,
    required String toDate,
  }) = _Employee;

  factory Employee.fromJson(Map<String,dynamic> json)
   => _$EmployeeFromJson(json);



}