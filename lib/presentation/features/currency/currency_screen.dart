import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/config/app_color.dart';

import '../../../app/config/app_text_style.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      child: Column(
        children: [
          SizedBox(
            width: 411.w,
            height: 21.h,
          ),
          Container(
            width: 411.w,
            height: 60.h,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: 17.0.sp,
                      bottom: 31.0.sp,
                      left: 35.0.sp,
                    ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    semanticLabel: 'Press to go to previous screen',
                  ),
                ),
                SizedBox(width: 112.w),
                Text(
                  "Currency",
                  style: AppTextStyle.balanceTextStyle,
                )
              ],
            )
          ),
      ]
       )
      );
  }
}
