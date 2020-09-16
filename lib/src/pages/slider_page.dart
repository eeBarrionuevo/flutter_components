import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  List<int> listNumber = [2,4,6,7,8,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: _buildList(),
      )
    );
  }

  Widget _buildList(){
    return ListView.builder(
      itemCount: listNumber.length,
      itemBuilder: (BuildContext context, int index){
        int item = listNumber[index];
        return FadeInImage(
          placeholder: AssetImage("assets/images/jar-loading.gif"),
          image: NetworkImage("https://picsum.photos/500/300/?image=$item"),
        );
      },
    );
  }

}