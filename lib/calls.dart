import 'package:flutter/material.dart';

import 'contacts.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => Contacts(),
              ),
              (route) =>
                  true, //if you want to disable back feature set to false
            );
        },
        child: Icon(Icons.add_call),
        backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
      ),
      body: ListView(
        children: [
          chatTilesWC("assets/Ali.jpg", "Ali Tahir", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Faheem.jpg", "Faheem", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Ali.jpg", "Ali Tahir", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Faheem.jpg", "Faheem", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Faheem.jpg", "Faheem", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
          chatTilesWC("assets/Ali.jpg", "Ali Tahir", "Yesterday, 2:40 PM",
              Icons.call_made, Icons.call, Color.fromRGBO(0, 129, 105, 1.0)),
          chatTilesWC("assets/Aamir.jpg", "Aamir", "Yesterday, 2:40 PM",
              Icons.call_received, Icons.call, Colors.red),
        ],
      ),
    );
  }

  Widget chatTilesWC(path, name, subName, subIcon, icon, col) {
    return Column(
      children: [
        SizedBox(
          height: 8,
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
          subtitle: Row(
            children: [
              Icon(
                subIcon,
                color: col,
                size: 16,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                subName,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    icon,
                    color: Color.fromRGBO(0, 129, 105, 1.0),
                    size: 20,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
