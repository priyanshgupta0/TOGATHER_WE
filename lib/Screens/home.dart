import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:togather_we/Screens/Counselling.dart';
import 'package:togather_we/Screens/Friends.dart';
import 'package:togather_we/Screens/Games.dart';
import 'package:togather_we/Screens/GeneralRoom.dart';
import 'package:togather_we/Screens/Login_page.dart';
import 'package:togather_we/Screens/StoryRoom.dart';
import 'package:togather_we/Screens/chat.dart';
import 'package:togather_we/Screens/userProfile.dart';
import 'package:togather_we/Screens/userdaitales.dart';
import 'package:togather_we/Screens/userdata.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserData> UserDatabase = [];

  @override
  void initState() {
    super.initState();
    UserDatabase = UserDetails().UserDetail;
  }

  @override
  Widget build(BuildContext context) {
    final Uri General_Room_one =
        Uri(scheme: 'https', host: 'meet.google.com', path: 'jmk-hajq-cfa');

    final Uri General_Room_two =
        Uri(scheme: 'https', host: 'meet.google.com', path: 'msi-wvnc-fsp');

    final Uri Story_Room_one =
        Uri(scheme: 'https', host: 'meet.google.com', path: 'brq-cppe-nsz');

    final Uri Story_Room_two =
        Uri(scheme: 'https', host: 'meet.google.com', path: 'wuj-jnqv-qhw');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "To Gather We",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
                child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "General Room",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const GeneralRoom()));
                          },
                          child: Text(
                            "Show More >>",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "Room 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  _launchInBrowser(General_Room_one);
                                },
                                child: Card(
                                  color: Colors.lightGreen,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Join Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "Room 2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  _launchInBrowser(General_Room_two);
                                },
                                child: Card(
                                  color: Colors.lightGreen,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Join Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
                child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Story Room",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const StoryRoom()));
                          },
                          child: Text(
                            "Show More >>",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "Room 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  _launchInBrowser(Story_Room_one);
                                },
                                child: Card(
                                  color: Colors.lightGreen,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Join Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                "Room 2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  _launchInBrowser(Story_Room_two);
                                },
                                child: Card(
                                  color: Colors.lightGreen,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Join Now",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(UserDatabase[globalvalue].Name),
              accountEmail: Text(UserDatabase[globalvalue].Email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(UserDatabase[globalvalue].Photo),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("User Profile"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const userProf()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.family_restroom),
              title: const Text("Friends"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Friends()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text("Games"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Games()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text("Chat"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chat()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text("Counseling"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Counselling()));
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.pop(context); // on tap item drawer close
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Center(child: Text("Log out")),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Are you sure want to Log out?"),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()),
                                      );
                                    },
                                    child: const Text('Confirm'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
