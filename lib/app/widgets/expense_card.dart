import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/utils/utils.dart';


import '../config/app_text_style.dart';

class ExpenseCard extends StatelessWidget {

   final double amount;
   final String title;
   final Color expenseColor;
    String icon;

  ExpenseCard({
   required this.amount, required this.title,
    required this.icon,required this.expenseColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.primaryColor,
      child: Container(
        width: 179.w,
        height: 121.h,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(4.r)
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 21. w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 12.w, top: 12.h),
                  child: Container(
                    width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: expenseColor,
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset(Utils.getIconPath(icon, format: 'svg'),width: 24.w, height: 24.h,)),
                ),
              ),
              SizedBox(height: 9.h,),
              Text(
                title,
                style: AppTextStyle.expenseStateStyle,
              ),
              SizedBox(height: 12.h,),
              Text("\$$amount", style: AppTextStyle.balanceTextStyle,),
            ],
          ),
        ),
      ),
    );
  }
}
