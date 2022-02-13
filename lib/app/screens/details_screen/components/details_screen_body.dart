import 'package:flutter/material.dart';
import 'package:mina/app/config/app_color.dart';
import 'package:mina/app/config/app_textstyle.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: SvgPicture.asset('assets/icons/Framedelete.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/share.svg'))
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Spacer(flex: 3),
            detailsTitleAndText('Title', 'CashBack Offer - Payme'),
            const SizedBox(height: 10),
            detailsTitleAndText('Amount', '\$30'),
            const SizedBox(height: 10),
            detailsTitleAndText('Transaction Type', 'Income'),
            const SizedBox(height: 10),
            detailsTitleAndText('Tag', 'Entertainment'),
            const SizedBox(height: 10),
            detailsTitleAndText('When', 'Sunday, 18 Dec 8:30 AM'),
            const SizedBox(height: 10),
            detailsTitleAndText(
                'Note', 'I got this amount from Payme for recharge'),
            const SizedBox(height: 10),
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
