import 'dart:convert';

import 'package:employee_data_test/constants/utils.dart';

import 'package:hive/hive.dart';

import '../data/models/employee/employee.dart';
import '../data/models/employee_list/employeeLists.dart';




class Helper {

  static EmployeeList dummyListOfEmployee = const EmployeeList(employees: [
    Employee(id: "1", name: "John", role: "Manager", fromDate: "12/10/2024", toDate: ""),
    Employee(id: "2", name: "John", role: "Manager", fromDate: "12/10/2024", toDate: "")
  ]);
}