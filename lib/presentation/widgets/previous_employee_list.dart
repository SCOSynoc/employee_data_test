
import 'package:employee_data_test/blocs/EmployeeBloc/employee_bloc.dart';
import 'package:employee_data_test/blocs/EmployeeBloc/employee_events.dart';
import 'package:employee_data_test/blocs/EmployeeBloc/employee_states.dart';
import 'package:employee_data_test/constants/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/colors.dart';
import '../../constants/utils.dart';
import '../../data/models/employee/employee.dart';
import 'common_text_widget.dart';


class PreviousEmployeeList extends StatelessWidget {
  const PreviousEmployeeList({super.key});
  @override
  Widget build(BuildContext context) {


        return BlocBuilder<EmployeeBloc,EmployeeStates>(
          builder: (BuildContext context, state) {
            if(state is EmployeesFetched) {
              final sortedData = getSortedList(state, EmpFilter.old);
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: sortedData.length,
                  itemBuilder: (context, index) {
                    final data = sortedData[index];
                    return Dismissible(
                      crossAxisEndOffset: 0.085995,
                      key: UniqueKey(),
                      background:  ColoredBox(
                        color: Colors.red,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: SvgPicture.asset("$assetPath/delete_icon.svg", color: Colors.white,),
                          ),
                        ),
                      ),
                      direction: DismissDirection.endToStart,
                      onDismissed: (DismissDirection direction) {
                        context.read<EmployeeBloc>().add(DeleteEmployeeRequest(id: data.id, context: context));
                        /*navigateAndRemovePush(context, MyApp());*/
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(fontSize: 16, wtg: FontWeight.w500, color: appFontPrimaryColor, text:data.name ),
                                const SizedBox(height: 6,),
                                TextWidget(fontSize: 14, wtg: FontWeight.w400, color: appSecondaryFontColor, text:data.role),
                                const SizedBox(height: 6,),
                                TextWidget(fontSize: 12, wtg: FontWeight.w400, color: appSecondaryFontColor, text: "${data.fromDate}-${data.toDate}"),
                              ],
                            ),
                          ),

                          const Divider(thickness: 0.5, color: appSecondaryFontColor,)
                        ],
                      ),
                    );
                  });
            }

            return const SizedBox.shrink();

          },
        );
      }
}
