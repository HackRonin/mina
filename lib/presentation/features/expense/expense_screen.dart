import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/config/app_text_style.dart';
import 'package:mina/app/widgets/amount_card.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      child: Column(
        children: [
          SizedBox(height: 12.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AmountCard(title: 'TOTAL EXPENSE', amount: "20.00"),
            ),
           SizedBox(height: 30.h,),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text('All Expense', style: AppTextStyle.recentTransactionStyle,),
              ))
        ],
      ),
    );
  }
}
