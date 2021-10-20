import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  Navigator.pushAndRemoveUntil<dynamic>(
          //       context,
          //       MaterialPageRoute<dynamic>(
          //         builder: (BuildContext context) => Contacts(),
          //       ),
          //       (route) =>
          //           true, //if you want to disable back feature set to false
          //     );
        },
        child: Icon(Icons.camera_alt),
        backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
      ),
      body: ListView(
        children: [
          myStatus("assets/Talha.jpg", "My Status", "Tap to add Status Updaye"),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Recent Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ),
          contactTiles("assets/Salman.jpg", "Salman ", "Today, 10:20 M"),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Viewed Updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ),
          contactTiles("assets/Ali.jpg", "Basit", "Today, 10:20 M"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Today, 10:20 M"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Today, 10:20 M"),
        ],
      ),
    );
  }

  Widget contactTiles(path, name, subName) {
    return Column(
      children: [
        SizedBox(
          height: 7,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(path),
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subName,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }

  Widget myStatus(path, name, subName) {
    return Column(
      children: [
        SizedBox(
          height: 7,
        ),
        ListTile(
          leading: Stack(children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 129, 105, 1.0),
                border: Border.all(
                    width: 1, color: Theme.of(context).scaffoldBackgroundColor),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 10))
                ],
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 16,
              ),
            ),
          ]),
          title: Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subName,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
