import 'package:flutter/material.dart';
import 'package:flutter_app_components_final/src/pages/alert_page.dart';
import 'package:flutter_app_components_final/src/pages/animated_page.dart';
import 'package:flutter_app_components_final/src/pages/avatar_page.dart';
import 'package:flutter_app_components_final/src/pages/card_page.dart';
import 'package:flutter_app_components_final/src/pages/input_page.dart';
import 'package:flutter_app_components_final/src/pages/slider_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Alertas"),
            leading: Icon(Icons.add_alert, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => AlertPage()
              ));
            },
          ),
          Divider(
            thickness: 0.8,
          ),
          ListTile(
            title: Text("Avatars"),
            leading: Icon(Icons.person, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AvatarPage()
              ));
            },
          ),
          Divider(
            thickness: 0.8,
          ),
          ListTile(
            title: Text("Cards"),
            leading: Icon(Icons.folder, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CardPage()
              ));
            },
          ),
          Divider(
            thickness: 0.8,
          ),
          ListTile(
            title: Text("Animated"),
            leading: Icon(Icons.pie_chart_outlined, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AnimatedPage()
              ));
            },
          ),
          Divider(
            thickness: 0.8,
          ),
          ListTile(
            title: Text("Inputs"),
            leading: Icon(Icons.input, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => InputPage()
              ));
            },
          ),
          Divider(
            thickness: 0.8,
          ),
          ListTile(
            title: Text("Slider"),
            leading: Icon(Icons.list, color: Colors.lightBlueAccent),
            trailing: Icon(Icons.chevron_right, color: Colors.lightBlueAccent),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SliderPage()
              ));
            },
          ),
        ],
      )
    );
  }
}
