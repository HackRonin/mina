import 'package:flutter/material.dart';

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
          return Container(color: Colors.black,);
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (selectedValue == 'All Income') {
          return   Container(color: Colors.blue,);
        }
        // Or less then that we called it mobile
        else  {
          return  Container(color: Colors.red,);
        }
      },
    );
  }
}