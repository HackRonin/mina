import 'package:flutter/material.dart';
import 'package:mina/presentation/features/root_page/components/dashboard/dashboard_card_item.dart';
import 'package:sizer/sizer.dart';

class DashboardCards extends StatefulWidget {
  const DashboardCards({Key? key}) : super(key: key);

  @override
  _DashboardCardsState createState() => _DashboardCardsState();
}

class _DashboardCardsState extends State<DashboardCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardCardItem(
          title: 'Total Balance',
          amount: '23,000',
          width: 379.w,
          height: 120.h,
        ),
        Row(
          children: [
            DashboardCardItem(
              title: 'Total Income',
              amount: '23,000',
              width: 179.w,
              height: 121.h,
              icon: Icons.arrow_downward_sharp,
            ),
            DashboardCardItem(
              title: 'Total Expense',
              amount: '23,000',
              width: 179.w,
              height: 121.h,
              icon: Icons.arrow_upward_sharp,
            ),
          ],
        )
      ],
    );
  }
}
