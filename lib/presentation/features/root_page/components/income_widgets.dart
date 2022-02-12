import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mina/app/config/app_color.dart';

Text date(String date) {
  return Text(date,
    style: GoogleFonts.inter(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: AppColor.incomeStateColor,
    ),
  );
}
Text income_price(String price,Color color) {
  return Text(price,
    style: GoogleFonts.inter(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      color: color,
    ),
  );
}

Text tags(String tag) {
  return Text(tag,
    style: GoogleFonts.inter(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: AppColor.blackColor,
    ),
  );
}

Text title_text(String title,double size) {
  return Text(title,
    style: GoogleFonts.inter(
      fontSize: size.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      color: AppColor.blackColor,
    ),
  );
}

SizedBox gap(double height) {
  return SizedBox(
    height: height,
  );
}

Text balance_text(String balance) {
  return Text(' \$$balance',
    style: GoogleFonts.inter(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      color: AppColor.balanceColor,
    ),);
}

Text income_tag(String text) {
  return Text(text,
    style:GoogleFonts.inter(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: AppColor.incomeStateColor,
    ),
  );
}
Stack incomeCard(String trans_icon_name,String trans_title,String trans_tag
    ,String trans_incomePrice,Color color, String trans_date, ) {
  return Stack(
    children: [
      Container(
        height: 110,
        color: AppColor.primaryColor,
      ),
      Positioned(
        top: 12.sp,
        left: 12.sp,
        bottom: 12.sp,
        child: Container(
          color:AppColor.bgColor,
          height: 60.sp,
          width: 65.sp,),
      ),
      Positioned(
        top: 35.sp,
        left: 35.sp,
        child: SvgPicture.asset('assets/icons/$trans_icon_name.svg',
          height: 20.sp,
          width: 20.sp,),
      ),

      Positioned(
          top: 20.sp,
          left: 90.sp,
          child: title_text(trans_title,14)),
      Positioned(
          bottom: 30.sp,
          left: 91.sp,
          child: tags(trans_tag)),
      Positioned(
          top: 20.sp,
          right: 8.sp,
          child: income_price(trans_incomePrice,color)),
      Positioned(
        bottom: 26.sp,
        right: 8.sp,
        child: date(trans_date),)
    ],
  );
}