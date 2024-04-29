import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/constants/app_styles.dart';
import 'package:new_project_doctor/models/booking_local.dart';

class TerminatedServiceBody extends StatelessWidget {
  const TerminatedServiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14.0.h),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return BookItem(
                  icon: Icons.cancel,
                  iconColor: Colors.red,
                  image: bookingList[index].image,
                  name: bookingList[index].name,
                  address: bookingList[index].address,
                  status: 'cancelled',
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 15.h);
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String status;
  final IconData? icon;
  final Color iconColor;
  const BookItem({
    super.key,
    required this.image,
    required this.name,
    required this.address,
    required this.status,
    required this.icon,
    required this.iconColor,
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
        child: BookDetailsWidget(
          status: status,
          image: image,
          name: name,
          address: address,
          icon: icon,
          iconColor: iconColor,
        ),
      ),
    );
  }
}

class BookDetailsWidget extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String status;
  final IconData? icon;
  final Color iconColor;

  const BookDetailsWidget({
    super.key,
    required this.image,
    required this.name,
    required this.address,
    required this.status,
    required this.icon,
    required this.iconColor,
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
            Row(
              children: [
                Text(
                  address,
                  style: AppStyles.style10SemiB,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(height: 11.h),
            Row(
              children: [
                Text(status),
                Icon(
                  icon,
                  color: iconColor,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

List<BookingLocal> bookingList = [
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Ahmed Hamdy',
    address: 'Cairo, Egypt',
    rate: 4.5,
  ),
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Mohamed Ali',
    address: 'Alexandria, Egypt',
    rate: 4.0,
  ),
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Mohamed Hamdy',
    address: 'Banha, Egypt',
    rate: 4.5,
  ),
  BookingLocal(
    image: 'assets/image/test2.jpg',
    name: 'Dr. MIMO',
    address: 'Cairo, Egypt',
    rate: 4.0,
  ),
  BookingLocal(
    image: 'assets/image/test1.jpg',
    name: 'Dr. Mohamed Ali',
    address: 'Banha, Egypt',
    rate: 4.5,
  ),
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Ahmed Hamdy',
    address: 'Cairo, Egypt',
    rate: 4.5,
  ),
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Mohamed Ali',
    address: 'Alexandria, Egypt',
    rate: 4.0,
  ),
  BookingLocal(
    image: 'assets/image/test3.jpg',
    name: 'Dr. Mohamed Hamdy',
    address: 'Banha, Egypt',
    rate: 4.5,
  ),
  BookingLocal(
    image: 'assets/image/test2.jpg',
    name: 'Dr. MIMO',
    address: 'Cairo, Egypt',
    rate: 4.0,
  ),
  BookingLocal(
    image: 'assets/image/test1.jpg',
    name: 'Dr. Mohamed Ali',
    address: 'Banha, Egypt',
    rate: 4.5,
  ),
  // BookingLocal(
  //   image: 'assets/images/booking6.png',
  //   name: 'Dr. Mai Ali',
  //   address: 'Alexandria, Egypt',
  //   rate: 4.0,
  // ),
];
