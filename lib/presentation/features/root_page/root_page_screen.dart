import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        actions:[
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: DropdownButton(
          // Initial Value
          value: dropdownvalue,
          // Down Arrow Icon
          icon: const Icon(Icons.keyboard_arrow_down),
          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: AppColor.blackColor,
              ),
              ),
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
        ),

          pic('switch'),
          Spacer(),
          pic('menu'),
        ],

      ),
      body: ScreenSwitch(selectedValue: dropdownvalue,)
    );
  }

  SvgPicture pic(String pic) {
    return SvgPicture.asset('assets/icons/$pic.svg',
          height: 20.sp,
          width: 20.sp,);
  }

}