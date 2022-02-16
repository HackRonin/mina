import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/config/app_color.dart';

import '../../../app/config/app_text_style.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
       leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
       ),
        title: Text(
            "Currency",
            style: AppTextStyle.balanceTextStyle
        ),
      ),
      body: Container(
        color: Colors.white38,
      ),
    );
  }
}
