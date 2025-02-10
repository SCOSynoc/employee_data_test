
import 'dart:convert';

import 'package:employee_data_test/local_storage/hive_service.dart';

import '../models/employee/employee.dart';
import '../models/employee_list/employeeLists.dart';

class EmployeeRepository {


  final HiveService _hiveService = HiveService()..initLocalService();


  List<Employee> _employeesList = [];



  void initializeLists(){
     dynamic  data = _hiveService.getData(key: "employeeData");
     if(data != null) {
       dynamic decodeData = json.decode(data);
       EmployeeList emp = EmployeeList.fromJson(decodeData);
       _employeesList =  emp.employees.toList();
       /*print("The emp list is ${_employeesList}");*/
     }else{
       _employeesList = [];
     }

  }


  List<Employee> getAllEmployees() => _employeesList;


  void addEmployee(Employee employee) {
    _employeesList.add(employee);
    _hiveService.addData(key: "employeeData", value: json.encode(EmployeeList(employees:_employeesList ).toJson()));

  }

  void updateEmployee(Employee employee) {
    final index = _employeesList.indexWhere((e) => e.id == employee.id);
    if (index != -1) {
      _employeesList[index] = employee;
    }
    _hiveService.addData(key: "employeeData", value: json.encode(EmployeeList(employees:_employeesList ).toJson()));
  }

  void deleteEmployee(String id) {
    _employeesList.removeWhere((emp) => emp.id == id);
    _hiveService.addData(key: "employeeData", value: json.encode(EmployeeList(employees:_employeesList ).toJson()));
  }

  Employee getEmployeeById(String id){
    Employee emp = _employeesList.where((emp) => emp.id == id).toList()[0];
    return emp;
  }

  void undoDelete(int index, Employee employee) {
    _employeesList.insert(index, employee);
    _hiveService.addData(key: "employeeData", value: json.encode(EmployeeList(employees:_employeesList ).toJson()));
  }


}