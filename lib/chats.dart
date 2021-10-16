import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        chatTiles("assets/Ali.jpg", "Ali Tahir", "InshaAllah will talk Later",
            "7:30 PM", "3"),
        chatTilesWC("assets/Aamir.jpg", "Aamir UBIT", "Ok", "7:30 PM"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
        chatTiles("assets/Salman.jpg", "Salman ", "InshaAllah", "7:30 PM", "2"),
        chatTiles("assets/Ali.jpg", "Basit", "InshaAllah will talk Later",
            "4:20 PM", "1"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
        chatTiles("assets/Ali.jpg", "Ali Tahir", "InshaAllah will talk Later",
            "4:20 PM", "3"),
        chatTilesWC(
            "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Taha.jpg", "Taha Bhai", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
        chatTilesWC(
            "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Taha.jpg", "Taha Bhai", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
        chatTilesWC(
            "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Taha.jpg", "Taha Bhai", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
        chatTilesWC(
            "assets/Abdullah UBIT.jpg", "Abdullah UBIT", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Taha.jpg", "Taha Bhai", "Done Hogaya", "7:30 PM"),
        chatTilesWC("assets/Faheem.jpg", "Faheem", "Done Hogaya", "7:30 PM"),
      ],
    );
  }

  Widget chatTiles(path, name, subName, time, msgs) {
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
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10,
                child: Text(msgs),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget chatTilesWC(path, name, subName, time) {
    return ListTile(
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
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: TextStyle(color: Colors.grey, fontSize: 13)),
        ],
      ),
    );
  }
}
