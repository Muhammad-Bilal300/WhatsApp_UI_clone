import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/camera.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
            title: const Text(
              "WhatsApp",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
              PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                  },
                 
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Text("New Group"),
                        ),
                        value: "New Group",
                      ),
                      PopupMenuItem(
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Text("New Broadcast"),
                        ),
                        value: "New Broadcast",
                      ),
                      PopupMenuItem(
                        child: Text("Linked Devices"),
                        value: "Linked Devices",
                      ),
                      PopupMenuItem(
                        child: Padding(
                          padding: const EdgeInsets.only(right:7.0),
                          child: Text("Starred Messages"),
                        ),
                        value: "Starred Messages",
                      ),
                      PopupMenuItem(
                        child: Text("Settings"),
                        value: "Settings",
                      ),
                    ];
                  })
            ],
            bottom: TabBar(
              indicatorWeight: 3,
              indicatorColor: Colors.white,
              tabs: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(
                  child: Text("CHATS", style: TextStyle(fontSize: 14)),
                ),
                Tab(
                  child: Text("STATUS", style: TextStyle(fontSize: 14)),
                ),
                Tab(
                  child: Text("CALLS", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Camera(),
            Chats(),
            Status(),
            Calls(),
          ]),
        ));
  }
}
