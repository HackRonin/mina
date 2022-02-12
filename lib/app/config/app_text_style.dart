import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import 'app_color.dart';

class AppTextStyle{

  static TextStyle screenTitleStyle = GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.blackColor,
  );

  // static TextStyle balanceTitleStyle = GoogleFonts.inter(
  //   fontSize: 20.sp,
  //   fontWeight: FontWeight.w600,
  //   fontStyle: FontStyle.normal,
  //   color: AppColor.incomeStateColor,
  // );

  static TextStyle balanceTextStyle = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.balanceColor,
  );
  static TextStyle expenseStateStyle = GoogleFonts.inter(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.incomeStateColor,
  );
  static TextStyle dateTextStyle = GoogleFonts.inter(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColor.incomeStateColor,
  );
  static TextStyle recentTransactionStyle = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.blackColor,
  );

  static TextStyle incomeTextStyle = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.paleGreen,
  );

  static TextStyle expenseTextStyle = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    color: AppColor.paleRed,
  );

  static TextStyle tagTextStyle = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColor.blackColor,
  );

  static TextStyle detailsTitleTextStyle = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColor.incomeStateColor,
  );

  static TextStyle hintTextStyle = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColor.incomeStateColor,
  );

}
