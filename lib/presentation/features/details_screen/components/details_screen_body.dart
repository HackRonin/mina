import 'package:flutter/material.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/config/app_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mina/app/utils/utils.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        title: Text(
          "Details",
          style: AppTextStyle.screenTitleStyle,
        ),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Utils.getIconPath('assets/icons/Framedelete.svg'),
                height: 24.h,
                width: 24.w,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  SvgPicture.asset(Utils.getIconPath('assets/icons/share.svg')))
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            const Spacer(flex: 3),
            detailsTitleAndText('Title', 'CashBack Offer - Payme'),
            SizedBox(height: 16.h),
            detailsTitleAndText('Amount', '\$30'),
            SizedBox(height: 16.h),
            detailsTitleAndText('Transaction Type', 'Income'),
            SizedBox(height: 16.h),
            detailsTitleAndText('Tag', 'Entertainment'),
            SizedBox(height: 16.h),
            detailsTitleAndText('When', 'Sunday, 18 Dec 8:30 AM'),
            SizedBox(height: 16.h),
            detailsTitleAndText(
                'Note', 'I got this amount from Payme for recharge'),
            SizedBox(height: 16.h),
            detailsTitleAndText('Created At', 'Jan 11, 2022, 11:30 AM'),
          ],
        ),
      ),
    );
  }

  Column detailsTitleAndText(String title, String text) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyle.detailsTitleTextStyle,
        ),
        Text(
          text,
          style: AppTextStyle.detailsTextStyle,
        ),
      ],
    );
  }
}
