import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

class GeneralRoom extends StatefulWidget {
  const GeneralRoom({super.key});

  @override
  State<GeneralRoom> createState() => _GeneralRoomState();
}

class _GeneralRoomState extends State<GeneralRoom> {
  List<Uri> Room_link = [
    Uri(scheme: 'https', host: 'meet.google.com', path: 'jmk-hajq-cfa'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'msi-wvnc-fsp'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'jnt-fcce-vyp'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'uma-doyw-csh'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'mqz-pryz-pgn'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'qck-xzhy-qkz'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'wwe-ffey-izo'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'kyu-aewk-riv'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'kov-jroy-are'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'twx-bika-nyf'),
  ];

  List<String> Room_num = [
    "Room 1",
    "Room 2",
    "Room 3",
    "Room 4",
    "Room 5",
    "Room 6",
    "Room 7",
    "Room 8",
    "Room 9",
    "Room 10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "General Rooms",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
          itemCount: Room_num.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        Room_num[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          _launchInBrowser(Room_link[index]);
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
            );
          }),
    );
  }
}
