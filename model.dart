import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class Model {
        String eContact1;
        String eContact2;
        String eContact3;
        String eContact4;
        String eContact5;

  Model({
          this.eContact1,
          this.eContact2,
          this.eContact3,
          this.eContact4,
          this.eContact5,

  });
  Map<String, dynamic> toMap(){
    var map=<String,dynamic>{
      'Contact1': eContact1,
      'Contact2': eContact2,
      'Contact3': eContact3,
      'Contact4': eContact4,
      'Contact5': eContact5,
    };
    return map;
  }
  Model.fromMap(Map<String, dynamic> map){
    eContact1=map['Contact1'];
    eContact2=map['Contact2'];
    eContact3=map['Contact3'];
    eContact4=map['Contact4'];
    eContact5=map['Contact5'];


  }
}







  /*fromMap(decode) {
    var contact1 = this.eContact1;
  }*/


