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
    Uri(scheme: 'https', host: 'meet.google.com', path: 'mie-gsiu-rus'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'zwp-behn-csu'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'cci-ehda-yux'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'ptt-woof-wtm'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'boz-fsnc-mnm'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'nfb-dwwb-wkx'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'phn-jodk-hie'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'vjn-ihqz-bei'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'ddy-zpec-nja'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'qgb-efdf-zyw'),
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
