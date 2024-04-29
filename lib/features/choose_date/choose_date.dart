import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/features/order/order_now.dart';

class ChooseDate extends StatefulWidget {
  const ChooseDate({super.key});

  @override
  State<ChooseDate> createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Choose Date',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),

        actions: [
          Image.asset(
            "assets/icons/NurseCare-removebg-preview 1.png",
            height: 60.h,
            width: 60.w,
            fit: BoxFit.contain,
          ),
        ],
        // backgroundColor: Colors.white,
        elevation: 0,
      ),
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 65.h),
          Stack(
            children: [
              Container(
                height: 400.h,
                width: 350.w,
                decoration: BoxDecoration(
                  color: const Color(0xff83C5D3),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70.r),
                    topRight: Radius.circular(70.r),
                  ),
                ),
              ),
              Positioned(
                top: 20.h,
                left: 20.w,
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Container(
                        height: 250.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          shape: BoxShape.rectangle,
                        ),
                        child: openDatePicker()),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text(
                          'Time',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 100.w),
                        Text(
                          '10:00 AM',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderNow(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                const Color(0xff084585).withOpacity(0.9),
              ),
              minimumSize: MaterialStatePropertyAll(
                Size(300.w, 50.h),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
            child: Text(
              'Done',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget openDatePicker() {
  return Center(
      child: Container(
          // margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 60),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 100000)),
            onDateChanged: (DateTime value) {},
          )));
}
