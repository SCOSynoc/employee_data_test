// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeeLists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeList _$EmployeeListFromJson(Map<String, dynamic> json) {
  return _EmployeeList.fromJson(json);
}

/// @nodoc
mixin _$EmployeeList {
  List<Employee> get employees => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeListCopyWith<EmployeeList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListCopyWith<$Res> {
  factory $EmployeeListCopyWith(
          EmployeeList value, $Res Function(EmployeeList) then) =
      _$EmployeeListCopyWithImpl<$Res, EmployeeList>;
  @useResult
  $Res call({List<Employee> employees});
}

/// @nodoc
class _$EmployeeListCopyWithImpl<$Res, $Val extends EmployeeList>
    implements $EmployeeListCopyWith<$Res> {
  _$EmployeeListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeListImplCopyWith<$Res>
    implements $EmployeeListCopyWith<$Res> {
  factory _$$EmployeeListImplCopyWith(
          _$EmployeeListImpl value, $Res Function(_$EmployeeListImpl) then) =
      __$$EmployeeListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Employee> employees});
}

/// @nodoc
class __$$EmployeeListImplCopyWithImpl<$Res>
    extends _$EmployeeListCopyWithImpl<$Res, _$EmployeeListImpl>
    implements _$$EmployeeListImplCopyWith<$Res> {
  __$$EmployeeListImplCopyWithImpl(
      _$EmployeeListImpl _value, $Res Function(_$EmployeeListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$EmployeeListImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeListImpl implements _EmployeeList {
  const _$EmployeeListImpl({required final List<Employee> employees})
      : _employees = employees;

  factory _$EmployeeListImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeListImplFromJson(json);

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeeList(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeListImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeListImplCopyWith<_$EmployeeListImpl> get copyWith =>
      __$$EmployeeListImplCopyWithImpl<_$EmployeeListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeListImplToJson(
      this,
    );
  }
}

abstract class _EmployeeList implements EmployeeList {
  const factory _EmployeeList({required final List<Employee> employees}) =
      _$EmployeeListImpl;

  factory _EmployeeList.fromJson(Map<String, dynamic> json) =
      _$EmployeeListImpl.fromJson;

  @override
  List<Employee> get employees;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeListImplCopyWith<_$EmployeeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
