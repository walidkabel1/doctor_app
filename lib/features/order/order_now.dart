import 'package:flutter/material.dart';
import 'package:new_project_doctor/features/services/services_layout.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ServicesLayout();
              }));
            },
            child: const Text(
              "Order Now",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
