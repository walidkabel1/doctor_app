import 'package:flutter/material.dart';
import 'package:new_project_doctor/features/services/services_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ServicesLayout(),
    );
  }
}
