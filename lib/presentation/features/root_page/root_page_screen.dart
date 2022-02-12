
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mina/app/config/app_text_style.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'components/screen_switch.dart';

class RootPageScreens extends StatefulWidget{
  const RootPageScreens({Key? key}) : super(key: key);

  @override
  State<RootPageScreens> createState() => _RootPageScreensState();
}

class _RootPageScreensState extends State<RootPageScreens> {
  String dropDownValue = 'Dashboard';

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
        leading:  DropdownButton(
          value: dropDownValue,
          icon:  Icon(Icons.keyboard_arrow_down, color: AppColor.blackColor,),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items,
                  style: AppTextStyle.screenTitleStyle
              ),
            );
          }).toList(),

          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
        ),
        leadingWidth: 170.w,
        actions:[
          SvgPicture.asset(Utils.getIconPath('switch'), width: 24.w,height: 24.h,),
          //SizedBox(width: 39.w,),
          PopupMenuButton(
              icon: SvgPicture.asset(Utils.getIconPath('menu'), width: 24.w,height: 24.h),
              itemBuilder: (context){
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Currency"),
                  ),

                  const PopupMenuItem<int>(
                    value: 1,
                    child:  Text("Cloud Storage"),
                  ),

                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Settings"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 0){

                }else if(value == 1){

                }else if(value == 2){

                }
              }
          ),
        ],
      ),
        floatingActionButton: SizedBox(
          width: 56.w,
          height: 56.h,
          child: FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.add, color: AppColor.primaryColor,),
            backgroundColor: AppColor.fabBtnColor,
            onPressed: () {
              setState(() {

              });
            },
          ),
        ),
      body: ScreenSwitch(selectedValue: dropDownValue,)
    );
  }

  //  _popMenu({required int value, required String title}){
  //   return PopupMenuItem<int>(
  //     value: value,
  //     child: Text(title, style: AppTextStyle.tagTextStyle, ),
  //   );
  // }
}