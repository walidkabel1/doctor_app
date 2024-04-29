import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/features/mylist_view/widgets/doc_details_widget.dart';

class DocItem extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final num rate;

  const DocItem({
    super.key,
    required this.image,
    required this.name,
    required this.address,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 103.h,
        width: 343.w,
        decoration: BoxDecoration(
          color: const Color(0xff83C5D3),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: DocDetailsWidget(
          image: image,
          name: name,
          address: address,
          rate: rate,
        ),
      ),
    );
  }
}
