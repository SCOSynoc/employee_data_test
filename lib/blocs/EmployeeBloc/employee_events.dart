

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/employee/employee.dart';
import '../../data/models/employee_list/employeeLists.dart';
import 'employee_states.dart';


enum EmpFilter {old, current}

@immutable
sealed class EmployeeEvents extends Equatable {
  @override
  List<Object> get props => [];


}

class AddEmployeeData extends EmployeeEvents {
  final Employee employee;
  AddEmployeeData({required this.employee});

  @override
  List<Object> get props => [employee];
}


class UpdateEmployeeData extends EmployeeEvents {
  final Employee employee;
  UpdateEmployeeData({required this.employee});

  @override
  List<Object> get props => [employee];
}

class GetEmployeeData extends EmployeeEvents {}

class LoadOldEmployees extends EmployeeEvents {}

class DeleteEmployeeRequest extends EmployeeEvents {
  final String id;
  final BuildContext context;

  DeleteEmployeeRequest({required this.id,required this.context});
}

class FilterOldEmployees extends EmployeeEvents {
  final EmpFilter empfilter;
  final EmployeesFetched state;

  FilterOldEmployees({required this.empfilter,required this.state});

  @override
  List<Object> get props => [empfilter,state];
}
