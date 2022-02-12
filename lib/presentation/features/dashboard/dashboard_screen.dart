import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/widgets/amount_card.dart';
import 'package:mina/app/widgets/expense_card.dart';


import '../../../app/config/app_text_style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AmountCard(title: 'TOTAL BALANCE', amount: "300.00"),
          ),
          SizedBox(height: 12.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExpenseCard(amount: 20.00, title: 'TOTAL INCOME', icon: 'income',
                    expenseColor: AppColor.paleGreen.withOpacity(0.1)),

                ExpenseCard(amount: 10.00, title: 'TOTAL EXPENSE', icon: 'expense',
                    expenseColor: AppColor.paleRed.withOpacity(0.1))
              ],
            ),
          ),
          SizedBox(height: 34.h,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                'Recent Transactions',
                style: AppTextStyle.recentTransactionStyle,
              ),
            ),
          ),
          //ListView(),
        ],
      ),
    );
  }
}
