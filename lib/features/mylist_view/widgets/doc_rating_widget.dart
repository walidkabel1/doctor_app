import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/constants/app_styles.dart';

class DocRatingWidget extends StatelessWidget {
  const DocRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "4.5",
          style: AppStyles.style10SemiB,
        ),
        SizedBox(width: 5.w),
        Icon(
          Icons.star,
          color: const Color(0xffFFD700),
          size: 12.r,
        ),
      ],
    );
  }
}
