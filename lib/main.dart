import 'package:flutter/material.dart';
import 'package:flutter_app_components_final/src/pages/alert_page.dart';
import 'package:flutter_app_components_final/src/pages/card_page.dart';
import 'package:flutter_app_components_final/src/pages/home_page.dart';

void main(){
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Components",
      home: HomePage()
    );
  }
}
