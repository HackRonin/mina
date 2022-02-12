import 'package:flutter/material.dart';
import 'package:mina/app/config/app_textstyle.dart';
import 'package:mina/presentation/features/root_page/components/dashboard/dashboard_card_item.dart';
import 'package:sizer/sizer.dart';

class AllExpensePage extends StatefulWidget {
  const AllExpensePage({Key? key}) : super(key: key);

  @override
  _AllExpensePageState createState() => _AllExpensePageState();
}

class _AllExpensePageState extends State<AllExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardCardItem(
          title: 'Total Income',
          amount: '23,000',
          width: 379.w,
          height: 120.h,
        ),
        Text(
          'All Income',
          style: AppTextStyle.tagTextStyle,
        ),
        Expanded(
          child: ListView(),
        ),
      ],
    );
  }
}
