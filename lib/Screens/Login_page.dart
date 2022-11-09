import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:togather_we/Screens/home.dart';
import 'package:togather_we/Screens/logindata.dart';
import 'package:togather_we/Screens/signup.dart';

import 'Login_pass_user.dart';

int globalvalue = 0;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool eye = true;
  String Password = '';
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List<LoginData> LoginDatabase = [];

  @override
  void initState() {
    super.initState();
    LoginDatabase = LoginDetails().LoginDetail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
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
            Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            hintText: "Enter User Name",
                            labelText: "User Name"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          for (int i = 0; i < LoginDatabase.length; i++) {
                            if (LoginDatabase[i].userName == value) {
                              globalvalue =  i;
                              Password = LoginDatabase[i].password;
                              return null;
                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        obscureText: eye,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    eye = !eye;
                                    print(eye);
                                  });
                                  // eye = !eye;
                                  // print(eye);
                                },
                                child: Icon(Icons.remove_red_eye)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            hintText: "Enter Password",
                            labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length must be atleast 8";
                          } else if (value == Password) {
                            return null;
                          } else {
                            return "Incorect Password or Username";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 150, right: 150, top: 10, bottom: 10),
                      child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            }
                          },
                          child: Text("Login")),
                    ),
                  ],
                )),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(right: 30, top: 2),
            //       child: InkWell(
            //         onTap: () {},
            //         child: Text(
            //           "Forget Password?",
            //           style: TextStyle(
            //               color: Colors.blue, fontWeight: FontWeight.w600),
            //         ),
            //       ),
            //     )
            //   ],
            // ),

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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
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
            SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 40, right: 40),
            //   child: InkWell(
            //     onTap: () {},
            //     child: Card(
            //       color: Colors.white,
            //       elevation: 10,
            //       child: Container(
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5),
            //             border: Border.all(color: Colors.black)),
            //         height: 60,
            //         width: 300,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Image(
            //                     image: AssetImage("assets/Images/google.png"))),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Text(
            //                 "Sign In with Google",
            //                 style: TextStyle(
            //                     fontSize: 18, fontWeight: FontWeight.w600),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 30, right: 30),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 4,
            //         child: Divider(
            //           thickness: 3,
            //         ),
            //       ),
            //       Expanded(
            //           flex: 1,
            //           child: Center(
            //               child: Text(
            //             "or",
            //             style:
            //                 TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //           ))),
            //       Expanded(
            //         flex: 4,
            //         child: Divider(
            //           thickness: 3,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "New to To-Gather We?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
