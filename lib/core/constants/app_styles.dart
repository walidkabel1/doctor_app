import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/constants/app_colors.dart';

abstract class AppStyles {
  static TextStyle style15SemiB = TextStyle(
    fontSize: AppFonts.fSize15,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlackColor,
  );
  static TextStyle style10SemiB = TextStyle(
    fontSize: AppFonts.fSize10,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlackColor,
  );
}

abstract class AppFonts {
  static var fSize7 = 7.0.sp;
  static var fSize8 = 8.0.sp;
  static var fSize9 = 9.0.sp;
  static var fSize10 = 10.0.sp;
  static var fSize12 = 12.0.sp;
  static var fSize13 = 13.0.sp;
  static var fSize14 = 14.0.sp;
  static var fSize15 = 15.0.sp;
  static var fSize16 = 16.0.sp;
  static var fSize18 = 18.0.sp;
  static var fSize22 = 22.0.sp;
  static var fSize26 = 26.0.sp;
  static var fSize28 = 28.0.sp;
}
