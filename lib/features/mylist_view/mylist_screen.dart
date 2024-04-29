import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/core/widgets/default_app_bar.dart';
import 'package:new_project_doctor/features/choose_nurse_gender/choose_nurse_gender.dart';
import 'package:new_project_doctor/features/mylist_view/doc_item.dart';
import 'package:new_project_doctor/models/booking_local.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'My List',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset(
            'assets/image/NurseCare-removebg-preview 1.png',
            width: 78.w,
            height: 78.h,
            fit: BoxFit.contain,
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 14.0.h),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseNurseGender(),
                    ));
              },
              child: DocItem(
                image: bookingList[index].image,
                name: bookingList[index].name,
                address: bookingList[index].address,
                rate: bookingList[index].rate,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 15.h);
          },
          itemCount: 10,
        ),
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
