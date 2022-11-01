import 'package:demo_ihec/wonder.screen.dart';
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
      initialRoute: '/',
      routes: {
        '/wonder': (context) => new WonderScreen(),
        '/': (context) => new MyProfileScreen()
      },
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
            ),
            informationCard(
              Icons.phone,
              "00216 50 000 000",
            ),
            informationCard(
              Icons.email,
              "oussama.aroua@orange.com",
            ),
            OutlinedButton(
              child: Text(
                "Let's play a game",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/wonder");
              },
            )
          ],
        ),
      ),
    );
  }

  Widget informationCard(IconData cardIcon, String content) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.white,
        title: Text(content),
        leading: Icon(cardIcon),
        trailing: Icon(cardIcon),
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
