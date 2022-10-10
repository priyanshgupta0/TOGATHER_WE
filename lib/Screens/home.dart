import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:togather_we/Screens/Login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const UserAccountsDrawerHeader(
              accountName: const Text("Priyansh Gupta"),
              accountEmail: const Text("priyanshgupta20333@acropolis.in"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: const AssetImage("assets/Images/Priyansh.jpg"),
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
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.family_restroom),
              title: const Text("Friends"),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.videogame_asset),
              title: const Text("Games"),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text("Chat"),
              onTap: () {},
            ),
            const Divider(
              color: Colors.black,
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text("Counseling"),
              onTap: () {},
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
