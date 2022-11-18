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
    Uri(scheme: 'https', host: 'meet.google.com', path: 'brq-cppe-nsz'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'wuj-jnqv-qhw'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'vno-nnuw-mhd'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'szh-othq-wyg'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'qjb-ckdx-gci'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'jws-ksvv-hvy'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'qet-ocof-wpq'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'gkt-qpbe-ezj'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'cns-rizu-suy'),
    Uri(scheme: 'https', host: 'meet.google.com', path: 'app-opev-hyn'),
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
