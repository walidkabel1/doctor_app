import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesTabBar extends StatelessWidget {
  const ServicesTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      padding: EdgeInsets.all(8.0.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff5E85B1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16.0.r),
        ),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0f000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: TabBar(
        labelStyle: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        labelPadding: EdgeInsets.symmetric(
          horizontal: 12.0.w,
          vertical: 13.0.h,
        ),
        unselectedLabelColor: const Color(0xff539DF3),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0.r),
          ),
          color: const Color(0xff5E85B1),
        ),
        dividerHeight: 0,
        tabs: const [
          Text(
            'Terminated Service',
            textAlign: TextAlign.center,
          ),
          Text(
            'Upcoming Service',
            textAlign: TextAlign.center,
          ),
          Text(
            'Previous Service',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
