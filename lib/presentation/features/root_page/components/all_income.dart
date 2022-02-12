import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'income_widgets.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:sizer/sizer.dart';
class IncomePage extends StatefulWidget {
  const IncomePage({Key? key}) : super(key: key);

  @override
  _IncomePageState createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
      color: AppColor.bgColor,//AppColor.bgColor,
      child: Column(
        children: <Widget> [
         Container(
           color: AppColor.primaryColor,
           width:379,
           height: 120,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               income_tag('Total Income'),
               gap(10),
               balance_text('23,000'),
             ],
           ),
         ),
          gap(20),
          Align(
              alignment: Alignment.topLeft,
              child: title_text('All Income',16
              ),),
          Expanded(
            child: Stack(
              children:[
            ListView(
            children: [
                gap(20.sp),
            incomeCard('entertainment', 'Cashback Offer', 'Entertainment','+\$30',AppColor.paleGreen, 'Oct 30,2021'),
            gap(20.sp),
            incomeCard('food', 'Cheesy Pizza', 'Transportation', '-\$30', AppColor.paleRed,'Oct 30,2021'),
            gap(20.sp),
            incomeCard('others', 'Freelancing', 'Transportation', '+\$1300', AppColor.paleGreen, 'Oct 30,2021'),
            gap(20.sp),
            incomeCard('transportation', 'Metro Railway', 'Transportation', '-\$30', AppColor.paleRed, 'Oct 31,2021'),
        ],
      ),
                Positioned(
                  bottom: 30.sp,
                  right: 10.sp,
                  child: CircleAvatar(
                    radius: 20.sp,
                    backgroundColor: AppColor.fabBtnColor,
                    child: Icon(
                      Icons.add,
                      size: 30.sp,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
