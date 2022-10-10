import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:togather_we/Screens/home.dart';
import 'package:togather_we/Screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool eye = true;

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
                    border: InputBorder.none,
                    labelText: "Password",
                  ),
                ),
              ),
            ),
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
              padding: const EdgeInsets.only(
                  left: 150, right: 150, top: 10, bottom: 10),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }, child: Text("Login")),
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
