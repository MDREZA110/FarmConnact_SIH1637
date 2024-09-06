import 'package:flutter/material.dart';

class FarmerHomeScreen extends StatelessWidget {
  const FarmerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Farmer home screen",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}