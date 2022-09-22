import 'package:hive/hive.dart';
import 'package:rnr/data/models/user.dart';

class Session {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }

  void saveUser(User user) {
    print("saveUser($user)");

    _myBox.put("USER", user.toString());
  }

  String getUser() {
    print("getUser()");
    return _myBox.get("USER");
  }
}
