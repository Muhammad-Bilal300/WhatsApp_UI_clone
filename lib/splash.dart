import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1250), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
            'assets/logo.png',
            // height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.35,
          )),
    );
  }
}
