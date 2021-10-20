import 'package:flutter/material.dart';

import 'chats.dart';
import 'home.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "25 contacts",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("Invite a Friend"),
                ),
                value: "Invite a Friend",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text("Contacts"),
                ),
                value: "Contacts",
              ),
              PopupMenuItem(
                child: Text("Refresh"),
                value: "Refresh",
              ),
              PopupMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Text("Help"),
                ),
                value: "Help",
              ),
            ];
          })
        ],
      ),
      body: ListView(
        children: [
          contactTilesWI("New Group", Icons.group),
          contactTilesWI("New Contact", Icons.group_add),
          contactTiles("assets/Salman.jpg", "Salman ", "InshaAllah"),
          contactTiles("assets/Ali.jpg", "Basit", "InshaAllah will talk Later"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Faheem.jpg", "Faheem", "Done Hogaya"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Salman.jpg", "Salman ", "InshaAllah"),
          contactTiles("assets/Ali.jpg", "Basit", "InshaAllah will talk Later"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Faheem.jpg", "Faheem", "Done Hogaya"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Salman.jpg", "Salman ", "InshaAllah"),
          contactTiles("assets/Ali.jpg", "Basit", "InshaAllah will talk Later"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Faheem.jpg", "Faheem", "Done Hogaya"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Salman.jpg", "Salman ", "InshaAllah"),
          contactTiles("assets/Ali.jpg", "Basit", "InshaAllah will talk Later"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Faheem.jpg", "Faheem", "Done Hogaya"),
          contactTiles(
              "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya"),
          contactTiles("assets/Taha.jpg", "Taha Bhai", "Done Hogaya"),
          contactTiles("assets/Salman.jpg", "Salman ", "InshaAllah"),
        ],
      ),
    );
  }

  Widget contactTilesWI(name, icon) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(0, 129, 105, 1.0),
            child: Icon(icon),
          ),
          title: Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Widget contactTiles(path, name, subName) {
    return Column(
      children: [
        SizedBox(
          height: 10,
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
}
