import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23.0,
              backgroundImage: NetworkImage("https://storage.googleapis.com/indie-hackers.appspot.com/podcast-thumbnails/028-wes-bos.jpg"),
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text("A",
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://storage.googleapis.com/indie-hackers.appspot.com/podcast-thumbnails/028-wes-bos.jpg"),
          placeholder: AssetImage("assets/images/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}
