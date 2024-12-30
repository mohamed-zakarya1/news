import 'package:flutter/material.dart';
import 'package:news/Screens/Business.dart';
import 'package:news/Screens/Entertainment.dart';
import 'package:news/Screens/General.dart';
import 'package:news/Screens/Sports.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => General(),));
          },color: Colors.blueAccent,child: Text('General'),),

          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Entertainment(),));
          },color: Colors.blueAccent,child: Text('Entertainment'),),

          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Sports(),));
          },color: Colors.blueAccent,child: Text('Sports'),),

          MaterialButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Business(),));
          },color: Colors.blueAccent,child: Text('Business'),),
        ],
      )
    );
  }
}
