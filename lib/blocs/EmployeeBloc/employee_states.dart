import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/employee/employee.dart';
import '../../data/models/employee_list/employeeLists.dart';

@immutable
sealed class EmployeeStates extends Equatable {
  @override
  List<Object> get props => [];
}

class EmployeeInitial extends EmployeeStates {}

class EmployeeSuccessfullyAdded extends EmployeeStates {
  final String message;
  EmployeeSuccessfullyAdded({required this.message,});

  @override
  List<Object> get props => [message];
}

class FailedToAddEmployee extends EmployeeStates {
  final String message;
  FailedToAddEmployee({required this.message});

  @override
  List<Object> get props => [message];

}

class EmployeeUpdateSuccess extends EmployeeStates {}


class EmployeesFetched extends EmployeeStates  {
  final EmployeeList employeeList;
  final EmployeeList filterOldEmployees;

  EmployeesFetched({required this.employeeList,required this.filterOldEmployees, });

  @override
  List<Object> get props => [employeeList,filterOldEmployees];
}

class SortedEmployeeFetch extends EmployeeStates {
  final List<Employee> sortedEmployees;

  SortedEmployeeFetch({required this.sortedEmployees});

  @override
  List<Object> get props => [sortedEmployees];
}




class FailedToFetchedEmployees extends EmployeeStates {
  final String message;
  FailedToFetchedEmployees({required this.message});

  @override
  List<Object> get props => [message];
}

class LoadingEmployeesList extends EmployeeStates {

}