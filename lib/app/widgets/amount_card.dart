import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/config/app_text_style.dart';


class AmountCard extends StatelessWidget {
  final String title;
  final String amount;
  const AmountCard({
    required this.title,
    required this.amount,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(4.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 34.h,),
          Text(title, style: AppTextStyle.expenseStateStyle,),
          SizedBox(height: 16.h,),
          Text("\$$amount", style: AppTextStyle.balanceTextStyle,)
        ],
      ),
    );
  }

}
