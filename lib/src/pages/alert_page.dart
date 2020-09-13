import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showAlert(context);
          },
          color: Colors.lightBlueAccent,
          shape: StadiumBorder(),
          child: Text(
            "Mostrar Alerta",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void showAlert(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          title: Text("Titulo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Este es el contenido del Alert"),
              SizedBox(
                height: 10.0,
              ),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Ok"),
            )
          ],
        );
      }
    );
  }


}
