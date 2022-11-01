import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Column(
        children: [
              CircleAvatar(
                  backgroundImage: AssetImage("assets/me.jpg") ,
                  radius: 50,
                  backgroundColor: Colors.teal.shade50,
              )
        ],
      ),
    );
  }
}
