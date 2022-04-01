import 'package:get/get.dart';
import 'package:time4uni/models/event.dart';
import '../database/dbhelper.dart';

class EventController extends GetxController{

  @override
  void onReady(){
    super.onReady();
  }
  Future<int> addEvent({Event? event}) async{
    return await DBHelper.insert(event);
  }
}