

import 'dart:convert';

import 'package:employee_data_test/blocs/EmployeeBloc/employee_events.dart';
import 'package:employee_data_test/blocs/EmployeeBloc/employee_states.dart';
import 'package:employee_data_test/constants/utils.dart';
import 'package:employee_data_test/data/models/employee_list/employeeLists.dart';
import 'package:employee_data_test/data/repository/employee_repository.dart';
import 'package:employee_data_test/domain/usecases/employes_cases.dart';
import 'package:employee_data_test/local_storage/hive_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/employee/employee.dart';





class EmployeeBloc extends Bloc<EmployeeEvents,EmployeeStates> {
  EmployeeBloc(): super(EmployeeInitial()) {
    on<GetEmployeeData>(_onLoadEmployees);
    on<AddEmployeeData>(_onAddNewEmployee);
    on<UpdateEmployeeData>(_onUpdateEmployee);
    on<DeleteEmployeeRequest>(_onDeleteEmpById);
  }

  final EmployeeRepository _employeeRepository = EmployeeRepository();


  void _onLoadEmployees(GetEmployeeData event, Emitter<EmployeeStates> emit){
      emit(LoadingEmployeesList());
      final EmployeeList employees = EmployeeList(employees: GetEmployee(_employeeRepository).call());
      emit(EmployeesFetched(employeeList: employees, filterOldEmployees: employees));
  }

  void _onAddNewEmployee(AddEmployeeData event, Emitter<EmployeeStates> emit) {
      AddEmployee(_employeeRepository).call(event.employee);

      add(GetEmployeeData());
  }

  void _onUpdateEmployee(UpdateEmployeeData event, Emitter<EmployeeStates> emit){
    UpdateEmployee(_employeeRepository).call(event.employee);
    add(GetEmployeeData());
  }

  void _onDeleteEmpById(DeleteEmployeeRequest event, Emitter<EmployeeStates> emit) {

     int lastIndex = _employeeRepository.getAllEmployees().indexWhere((e) => e.id == event.id);
     Employee lastEmployee = GetEmployeeByID(_employeeRepository).call(event.id);
     DeleteEmployee(_employeeRepository).call(event.id);
     showSnackBar(context: event.context, content: "Employee data has been deleted", onPressed: (){
            UndoDeleteEmployee(repository: _employeeRepository) .call(lastIndex, lastEmployee);
            add(GetEmployeeData());
     });
     add(GetEmployeeData());
  }



}