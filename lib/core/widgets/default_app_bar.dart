import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildDefaultAppBar(BuildContext context) {
  return AppBar(
    // leading: IconButton(
    //   icon: const Icon(Icons.arrow_back_ios),
    //   onPressed: () {
    //     Navigator.pop(context);
    //   },
    // ),
    actions: [
      Image.asset(
        'assets/image/NurseCare-removebg-preview 1.png',
        width: 78.w,
        height: 78.h,
        fit: BoxFit.contain,
      ),
    ],
  );
}
