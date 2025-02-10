// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeeLists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeListImpl _$$EmployeeListImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeListImpl(
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EmployeeListImplToJson(_$EmployeeListImpl instance) =>
    <String, dynamic>{
      'employees': instance.employees,
    };
