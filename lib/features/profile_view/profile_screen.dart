import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: [
          Image.asset(
            'assets/image/NurseCare-removebg-preview 1.png',
            width: 78.w,
            height: 78.h,
            fit: BoxFit.contain,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/image/profile.png',
            ),
          ),
          SizedBox(
            height: 50.0.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
            child: Container(
              width: double.infinity,
              height: 150.0.h,
              decoration: BoxDecoration(
                color: const Color(0xffC0E1E8),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Name'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Age'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Address'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Account Settings'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
            child: Container(
              width: double.infinity,
              height: 150.0.h,
              decoration: BoxDecoration(
                color: const Color(0xffC0E1E8),
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Language'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Terms & Conditions'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Privacy Policy'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                    const Divider(
                      indent: 1,
                      endIndent: 5,
                      thickness: 1.2,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Refund Policy'),
                        Icon(Icons.arrow_forward_ios, size: 15.0.sp),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
