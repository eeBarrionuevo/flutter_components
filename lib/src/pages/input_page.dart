import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  int cantidad = 0;
  String fecha = "";
  TextEditingController inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: <Widget>[
          _buildInput(),
          Divider(),
          _buildMail(),
          Divider(),
          _buildPassword(),
          Divider(),
          _buildDate()
        ],
      )
    );
  }


  Widget _buildInput(){
    return  TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.accessibility),
          labelText: "Nombre",
          hintText: "Nombre de la persona",
          counter: Text("Letras $cantidad"),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          helperText: "Solo es el nombre"
      ),
      onChanged: (valor){
        cantidad = valor.length;
        setState(() {

        });
      },
    );
  }

  Widget _buildMail(){
    return  TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: "E-mail",
          labelText: "E-mail",
          helperText: "Solo es un E-mail",
          icon: Icon(Icons.mail),
          suffixIcon: Icon(Icons.alternate_email)
      ),
    );
  }

  Widget _buildPassword(){
    return  TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: "Password",
          labelText: "Password",
          helperText: "Solo es un Password",
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.vpn_key)
      ),
    );
  }

  Widget _buildDate(){
    return TextField(
      enableInteractiveSelection: false,
      controller: inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: "Fecha de Nacimiento",
          labelText: "Fecha de Nacimiento",
          helperText: "Fecha de Nacimiento",
          icon: Icon(Icons.calendar_today),
          suffixIcon: Icon(Icons.perm_contact_calendar)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        selectDate(context);
      },
    );
  }

  selectDate(BuildContext context) async{
     DateTime picked = await showDatePicker(
         context: context,
         initialDate: new DateTime.now(),
         firstDate: new DateTime(2000),
         lastDate: new DateTime(2025)
     );
     if(picked != null){
       setState(() {
         fecha = picked.toString();
          inputFieldDateController.text = fecha.substring(0, 10);
       });
     }
  }

}