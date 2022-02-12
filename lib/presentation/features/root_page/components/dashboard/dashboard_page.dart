import 'package:flutter/material.dart';
import 'package:mina/app/config/app_textstyle.dart';
import 'package:mina/presentation/features/root_page/components/dashboard/dashboard_cards.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 8.0,
      ),
      child: Column(
        children: [
          const DashboardCards(),
          Text(
            'Recent Transactions',
            style: AppTextStyle.tagTextStyle,
          ),
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
