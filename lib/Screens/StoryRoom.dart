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

class StoryRoom extends StatefulWidget {
  const StoryRoom({super.key});

  @override
  State<StoryRoom> createState() => _StoryRoomState();
}

class _StoryRoomState extends State<StoryRoom> {
  List<Uri> Room_link = [
    Uri(scheme: 'https', host: 'meet.google.com', path: 'kfo-mser-abm'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'dyq-ewxv-xzg'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'vft-mikw-jsx'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'cxi-fiud-qyo'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'vai-cxrw-yvk'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'ydz-icjp-bhe'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'agr-fdte-qxm'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'qoy-jcva-bbr'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'djc-nvwr-vsh'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'jgp-qrzy-xcu'),
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
          "Story Rooms",
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
