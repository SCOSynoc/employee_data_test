
import 'package:freezed_annotation/freezed_annotation.dart';

import '../employee/employee.dart';

part 'employeeLists.freezed.dart';

part 'employeeLists.g.dart';

@freezed
class EmployeeList with _$EmployeeList {

  const factory EmployeeList({
    required List<Employee> employees,
  }) = _EmployeeList;

  factory EmployeeList.fromJson(Map<String,dynamic> json)
  => _$EmployeeListFromJson(json);



}