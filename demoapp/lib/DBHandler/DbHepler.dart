import 'dart:ffi';
import 'dart:html';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

import '../Models/UserModel.dart';

class DbHelper {

  static Database? _db;

  static const DB_Name = 'test.db';
  static const String Table_User = 'user';
  static const int Version = 1;

  static const String C_UserName = 'user_name';
  static const String C_Email = 'email';
  static const String C_Password = 'password';

  Database? get db  {
    _db =  initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }
  
  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
    " $C_Email TEXT, "
    " $C_UserName TEXT, "
    " $C_Password TEXT, "
    " PRIMARY KEY ($C_Email)"
    ")");
  }

  Future<int?> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient?.insert(Table_User, user.toMap());
    return res;
  }

}

