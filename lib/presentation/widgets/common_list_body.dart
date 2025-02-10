
import 'package:employee_data_test/blocs/EmployeeBloc/employee_bloc.dart';
import 'package:employee_data_test/blocs/EmployeeBloc/employee_events.dart';
import 'package:employee_data_test/blocs/EmployeeBloc/employee_states.dart';
import 'package:employee_data_test/constants/helper.dart';
import 'package:employee_data_test/constants/utils.dart';
import 'package:employee_data_test/presentation/widgets/previous_employee_list.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';


import '../../constants/colors.dart';
import '../../data/models/employee/employee.dart';
import 'common_text_widget.dart';
import 'current_employee_list.dart';

class CommonBody extends StatelessWidget {
  const CommonBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        return BlocBuilder<EmployeeBloc,EmployeeStates>(
          builder: (BuildContext context, state) {
            /*print("The stats is $state and ${state is EmployeesFetched}");*/
            return AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Visibility(
                  visible: state is EmployeesFetched ? state.employeeList.employees.isEmpty ? false : true : false,
                  replacement:  Center(
                      child: SvgPicture.asset("$assetPath/no_data_txt.svg",)
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 56,
                          width: double.infinity,
                          color: headContainer,
                          child: const TextWidget(fontSize: 16, wtg: FontWeight.w500, color: appPrimaryColor, text: "Current Employees"),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height*0.40,
                            child:CurrentEmployeeList()
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          height: 56,
                          color: headContainer,
                          child: const TextWidget(fontSize: 16, wtg: FontWeight.w500, color: appPrimaryColor, text: "Previous Employees"),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height*0.40,
                            child: PreviousEmployeeList()
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: double.infinity,
                          height: 58,
                          color: headContainer,
                          child: const TextWidget(fontSize: 15, wtg: FontWeight.w500, color: appSecondaryFontColor, text: "Swipe left to delete"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
  }
}