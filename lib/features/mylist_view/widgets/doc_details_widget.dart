import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/constants/app_styles.dart';

class DocDetailsWidget extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final num rate;

  const DocDetailsWidget({
    super.key,
    required this.image,
    required this.name,
    required this.address,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 125.h,
          width: 145.w,
        ),
        SizedBox(width: 7.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                name,
                style: AppStyles.style15SemiB,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              address,
              style: AppStyles.style10SemiB,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            SizedBox(height: 11.h),
            Row(
              children: [
                Text(
                  rate.toString(),
                  style: AppStyles.style10SemiB,
                ),
                SizedBox(width: 5.w),
                Icon(
                  Icons.star,
                  color: const Color(0xffFFD700),
                  size: 12.r,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
