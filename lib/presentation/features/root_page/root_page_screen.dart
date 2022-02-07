import 'package:flutter/material.dart';
import 'package:mina/app/config/app_color.dart';

import 'components/screen_switch.dart';

class RootPageScreens extends StatefulWidget{
  RootPageScreens({Key? key}) : super(key: key);

  @override
  State<RootPageScreens> createState() => _RootPageScreensState();
}

class _RootPageScreensState extends State<RootPageScreens> {
  String dropdownvalue = 'Dashboard';

  var items = [
    'Dashboard',
    'All Income',
    'All Expense',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        actions: [
          DropdownButton(

            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;

              });
            },
          ),
        ],
      ),
      body: ScreenSwitch(selectedValue: dropdownvalue,)
    );
  }

}