import 'package:flutter/material.dart';

class CusomWidget extends StatelessWidget {
  String author;
  String description;
  String URL;
  String Published;
  String content;
  int tot;
  CusomWidget({super.key, required this.author, required this.description, required this.URL, required this.Published, required this.content, required this.tot});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(URL), radius: 50,),
              Text("Author: $author"),
              Text("Description: $description"),
              Text('publishedAt: $Published'),
              Text('content: $content'),
              Text("Total Articles : " "$tot")
            ],
          ),
        ),
      ),
    );
  }
}
