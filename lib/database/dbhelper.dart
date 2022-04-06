import 'package:sqflite/sqflite.dart';
import 'package:time4uni/models/event.dart';

class DBHelper{
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "events";
  static Future<void> initDb()async{
    if(_db != null){
      return;
    }
    try {
      String _path = await getDatabasesPath() + "events.db";
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (db, version) {
          return db.execute(
            "CREATE TABLE $_tableName("
                "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                "title STRING, note TEXT, date STRING, "
                "startTime STRING, endTime STRING, "
                "remind STRING, isCompleted INTEGER)",
          );
        },
      );
    } catch (e){
      print(e);
    }
  }
  static Future<int> insert(Event? event) async {
    return await _db?.insert(_tableName, event!.toJson())??1;
  }
}