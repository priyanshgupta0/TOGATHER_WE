import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget loginscreen() {
  return SafeArea(
    child: Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Image(
              image: AssetImage("assets/Images/togatherwe.png"),
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "User Name",
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Password",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(onPressed: () {}, child: Text("Login")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      "or",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ))),
                Expanded(
                  flex: 4,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
