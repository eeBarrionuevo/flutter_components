import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _cardType_1(),
          _cardType_2(),
          _cardType_1(),
          _cardType_2(),
          _cardType_1(),
          _cardType_2(),
          _cardType_1(),
          _cardType_2()



        ],
      )
    );
  }

  Widget _cardType_1(){
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("Soy el titulo de la tarjeta"),
            leading: Icon(
              Icons.photo_album,
              color: Colors.lightBlueAccent,
            ),
            subtitle: Text("Esta es la descripción de la primera tarjeta, aquí puede ir cualquier contenido"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: Text("Cancelar"),
              ),
              FlatButton(
                onPressed: (){},
                child: Text("Okay"),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType_2(){
    return  Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://www.anthropics.com/landscapepro/img/page-images/homepage/v3/header-image-A.jpg"),
            placeholder: AssetImage("assets/images/jar-loading.gif"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 150.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("Descripción de la imagen"),
          )
        ],
      ),
    );
  }


}
