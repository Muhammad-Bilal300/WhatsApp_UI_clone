import 'package:flutter/material.dart';

class IndividualChatPage extends StatefulWidget {
  // const IndividualChatPage({Key? key}) : super(key: key);

  final img;
  final Name;

  // const DetailPage({Key? key}) : super(key: key);
  IndividualChatPage({this.img, this.Name});

  @override
  _IndividualChatPageState createState() => _IndividualChatPageState();
}

class _IndividualChatPageState extends State<IndividualChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 20, color: Colors.white)),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.img),
              radius: 20,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              widget.Name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("View Contact"),
                ),
                value: "View Contact",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("Media,Links,and docs"),
                ),
                value: "Media,Links,and docs",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("Search"),
                ),
                value: "Search",
              ),
              PopupMenuItem(
                child: Text("Mute Notifications"),
                value: "Mute Notifications",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Text("Wallpaper"),
                ),
                value: "Wallpaper",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Text("More"),
                ),
                value: "more",
              ),
            ];
          })
        ],
        // SizedBox(
        //   width: 3,
        // ),
      ),
    );
  }
}
