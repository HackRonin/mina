import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mina/app/config/app_color.dart';

import '../../../app/config/app_text_style.dart';
import '../../../app/widgets/amount_card.dart';


class IncomeScreen extends StatefulWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  _IncomeScreenState createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      child: Column(
        children: [
          SizedBox(height: 12.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AmountCard(title: 'TOTAL INCOME', amount: "50.00"),
          ),
          SizedBox(height: 30.h,),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text('All Income', style: AppTextStyle.recentTransactionStyle,),
              ))
        ],
      ),
    );
  }
}
