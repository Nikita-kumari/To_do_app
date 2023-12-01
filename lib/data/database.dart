import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  }

  // load the from database
  void loaddata() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update th database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
