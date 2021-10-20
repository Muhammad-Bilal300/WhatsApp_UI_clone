import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(child: Text("Camera", style: TextStyle(fontSize: 30)))),
    );
  }
}
