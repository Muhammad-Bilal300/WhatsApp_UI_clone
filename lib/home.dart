import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
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
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text("CHATS", style: TextStyle(fontSize: 14)),
                     
                    ],
                  ),
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
            Status(),
            Chats(),
            Status(),
            Calls(),
          ]),
        ));
  }
}
