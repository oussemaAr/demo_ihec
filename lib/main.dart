import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfileScreen(),
    );
  }
}

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            userAvatar("assets/me.jpg"),
            informationText("Oussema AROUA"),
            informationText("Mobile Developer"),
            Divider(
              color: Colors.white,
              thickness: 3,
              endIndent: 32,
              indent: 32,
            )
          ],
        ),
      ),
    );
  }

  Widget informationText(String content) {
    return Text(
      content,
      style: GoogleFonts.adventPro(
        textStyle: TextStyle(fontSize: 46),
        color: Colors.white,
      ),
    );
  }

  Widget userAvatar(String assetFile) {
    return CircleAvatar(
      backgroundImage: AssetImage(assetFile),
      radius: 50,
      backgroundColor: Colors.teal.shade50,
    );
  }
}
