import 'package:flutter/material.dart';
import 'package:mina/presentation/features/dashboard/dashboard_screen.dart';
import 'package:mina/presentation/features/expense/expense_screen.dart';
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
          return ExpenseScreen();
        }
        else if (selectedValue == 'All Income') {
          return IncomeScreen();
        }
        else  {
          return  DashboardScreen();
        }
      },
    );
  }
}