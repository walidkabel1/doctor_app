import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_doctor/features/services/widgets/privious_service_body.dart';
import 'package:new_project_doctor/features/services/widgets/services_tab_bar.dart';
import 'package:new_project_doctor/features/services/widgets/terminated_service_body.dart';
import 'package:new_project_doctor/features/services/widgets/upcoming_service_body.dart';

class ServicesLayout extends StatelessWidget {
  const ServicesLayout({super.key});

  TabBar get _tabs {
    return const TabBar(
      tabs: [
        Text("Previous Services"),
        Text("Upcoming Services"),
        Text("Terminated Services"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
          actions: [
            Image.asset(
              'assets/image/NurseCare-removebg-preview 1.png',
              width: 60.w,
              height: 60.h,
              fit: BoxFit.contain,
            ),
          ],
          toolbarHeight: 115.h,
          centerTitle: true,
          title: const Text(
            "Services",
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: _tabs.preferredSize,
            child: const ServicesTabBar(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 16.0.h),
          child: const TabBarView(
            children: [
              TerminatedServiceBody(),
              UpcomingServiceBody(),
              PreviousServiceBody(),
            ],
          ),
        ),
      ),
    );
  }
}
