import 'package:flutter/material.dart';
import 'package:mina/presentation/features/root_page/components/all_expense/all_expense_page.dart';
import 'package:mina/presentation/features/root_page/components/dashboard/dashboard_page.dart';

import 'all_income.dart';

class ScreenSwitch extends StatelessWidget {
  final String selectedValue;

  const ScreenSwitch({
    Key? key,
    required this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (selectedValue == 'All Expense') {
          return const AllExpensePage();
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (selectedValue == 'All Income') {
          return IncomePage();
        }
        // Or less then that we called it mobile
        else {
          return const DashboardPage();
        }
      },
    );
  }
}
