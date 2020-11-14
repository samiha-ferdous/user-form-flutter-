import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'Info_display.dart';
import 'model.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main()  => runApp(MaterialApp(

    home:Input() ,
));
class Input extends StatefulWidget {
  @override

  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  List<Model> list = new List<Model>();
  SharedPreferences sharedPreferences;

  String eContact1;
  String eContact2;
  String eContact3;
  String eContact4;
  String eContact5;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //final  SharedPreferences prefs =  SharedPreferences.getInstance() as SharedPreferences;

  Model model = Model();



  Widget _buildEmergencyContact1() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Emergency contact 1'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'please enter number';
          }
          return null;
        },
        onSaved: (String value) {
          model.eContact1 = value;
        }
    );
  }

  Widget _buildEmergencyContact2() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Emergency contact 2'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'please enter number';
        }
        return null;
      },
      onSaved: (String value) {
        model.eContact2 = value;
      },

    );
  }

  Widget _buildEmergencyContact3() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Emergency contact 3'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'please enter number';
          }
          return null;
        },
        onSaved: (String value) {
          model.eContact3 = value;
        }
    );
  }

  Widget _buildEmergencyContact4() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Emergency contact 4'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'please enter number';
          }
          return null;
        },
        onSaved: (String value) {
          model.eContact4 = value;
        }
    );
  }

  Widget _buildEmergencyContact5() {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Emergency contact 5'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'please enter number';
          }
          return null;
        },
        onSaved: (String value) {
          model.eContact5 = value;
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Personal Information',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildEmergencyContact1(),
                _buildEmergencyContact2(),
                _buildEmergencyContact3(),
                _buildEmergencyContact4(),
                _buildEmergencyContact5(),

                //SizedBox(height: 100),
                RaisedButton(
                  child: Text('Submit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16),
                  ),

                  onPressed: () =>
                  {
                    if(!_formKey.currentState.validate()){
                      print('error')
                    },
                    _formKey.currentState.save(),
                    //_save(),
                    print(model.eContact1),
                    print(model.eContact2),
                    print(model.eContact3),
                    print(model.eContact4),
                    print(model.eContact5),
                  },
                ),
                RaisedButton(
                  child: Text('See info',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context) => Info_display(model: this.model)));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /*Widget buildList(){
    return ListView.builder(
        itemBuilder: (BuildContext context, int index)
    {
      return buildItem(list[index],index);
    },
    );
  }*/


  void addInputs(Model input){
     list.insert(0,input);
     list.insert(1,input);
     saveData();
  }
  void saveData(){
     List<String> stringList= list.map((input) => jsonEncode(input.toMap())).toList();
     sharedPreferences.setStringList('list', stringList);
     print (list[1]);
  }
  void loadData(){
    List<String> listString = sharedPreferences.getStringList('list');
    if(listString != null){
      list = listString.map(
              (input) => Model.fromMap(json.decode(input))).toList();
      setState((){});
    }
  }

}