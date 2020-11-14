import 'dart:async';
import 'dart:io'as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'model.dart';

class DBHelper{
  static Database _db;
  static const String CONTACT1 = 'contact1';
  static const String CONTACT2 = 'contact2';
  static const String CONTACT3 = 'contact3';
  static const String CONTACT4 = 'contact4';
  static const String CONTACT5 = 'contact5';

  Future<Database> get db async{
    if (_db!=null){
      return _db;
    }
    
  }
}