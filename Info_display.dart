import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model.dart';

class Info_display extends StatelessWidget {

  Model model;

  Info_display({this.model});
          String eContact1;
          String eContact2;
          String eContact3;
          String eContact4;
          String eContact5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Information',
        style: TextStyle(
            color: Colors.black
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.amberAccent,
    ),
        body: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(model.eContact1, style: TextStyle(fontSize: 22)),
                Text(model.eContact2, style: TextStyle(fontSize: 22)),
                Text(model.eContact3, style: TextStyle(fontSize: 22)),
                Text(model.eContact4, style: TextStyle(fontSize: 22)),
                Text(model.eContact5, style: TextStyle(fontSize: 22)),
                
                RaisedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('GO BACK') ,

                ),
              ],
            )
        )
    );
    return Container();
  }
}
