import 'dart:convert';

import 'package:employee_data_test/data/repository/employee_repository.dart';

import 'package:employee_data_test/data/repository/employee_repository.dart';

import 'package:employee_data_test/data/repository/employee_repository.dart';
import 'package:employee_data_test/local_storage/hive_service.dart';

import '../../data/models/employee/employee.dart';





class GetEmployee  {
  final EmployeeRepository repository;

  GetEmployee(this.repository);

  List<Employee> call()  {
    repository.initializeLists();
    return repository.getAllEmployees();
  }


}

class AddEmployee {
  final EmployeeRepository repository;

  AddEmployee(this.repository);


  void call(Employee employee) {
    repository.addEmployee(employee);

  }
}

class UpdateEmployee {
  final EmployeeRepository repository;

  UpdateEmployee(this.repository);

  void call(Employee emp) {
    repository.updateEmployee(emp);
  }
}

class DeleteEmployee {
  final EmployeeRepository repository;

  DeleteEmployee(this.repository);

  void call(String id) {
    repository.deleteEmployee(id);
  }
}

class GetEmployeeByID {
  final EmployeeRepository repository;

  GetEmployeeByID(this.repository);

  Employee call(String id) {
    return repository.getEmployeeById(id);
  }
}

class UndoDeleteEmployee {
  final EmployeeRepository repository;

  UndoDeleteEmployee({required this.repository});

  void call(int index, Employee employee) {
    repository.undoDelete(index, employee);
  }

}

