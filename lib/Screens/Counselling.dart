import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Counselling extends StatefulWidget {
  const Counselling({super.key});

  @override
  State<Counselling> createState() => _CounsellingState();
}

class _CounsellingState extends State<Counselling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Counselling",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
    );
  }
}