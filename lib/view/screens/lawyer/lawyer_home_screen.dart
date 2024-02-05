import 'package:flutter/material.dart';

class LawyerHomeScreen extends StatefulWidget {
  const LawyerHomeScreen({super.key});

  @override
  State<LawyerHomeScreen> createState() => _LawyerHomeScreenState();
}

class _LawyerHomeScreenState extends State<LawyerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("home screen")),);
  }
}