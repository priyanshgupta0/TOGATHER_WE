import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userProf extends StatefulWidget {
  const userProf({super.key});

  @override
  State<userProf> createState() => _userProfState();
}

class _userProfState extends State<userProf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "User Profile",
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
