import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/features/services/widgets/terminated_service_body.dart';
import 'package:new_project_doctor/models/booking_local.dart';

class UpcomingServiceBody extends StatelessWidget {
  const UpcomingServiceBody({super.key});

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
                  icon: Icons.timer,
                  iconColor: Colors.green,
                  status: '5,may,2024',
                  image: bookingList[index].image,
                  name: bookingList[index].name,
                  address: bookingList[index].address,
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
