import 'package:flutter/material.dart';
import 'package:mina/app/config/app_textstyle.dart';

class DashboardCardItem extends StatelessWidget {
  final String title;
  final String amount;
  final double width;
  final double height;
  final IconData? icon;

  const DashboardCardItem({
    required this.title,
    required this.amount,
    required this.width,
    required this.height,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: width,
        height: height,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(icon),
            ),
            Text(
              title,
              style: AppTextStyle.balanceTitleStyle,
            ),
            Text(amount),
          ],
        ),
      ),
    );
  }
}
