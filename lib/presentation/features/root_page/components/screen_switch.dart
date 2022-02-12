import 'package:flutter/material.dart';
import '../../income/income_screen.dart';
class ScreenSwitch extends StatelessWidget {
  final String selectedValue;
  const ScreenSwitch({
    Key? key,
    required this.selectedValue,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        if (selectedValue == 'All Expense') {
          return Container(color: Colors.black,);
        }
        else if (selectedValue == 'All Income') {
          return IncomeScreen();
        }
        else  {
          return  Container(color: Colors.red,);
        }
      },
    );
  }
}