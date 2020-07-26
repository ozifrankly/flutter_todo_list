import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_list/app/modules/home/home_controller.dart';
import 'package:todo_list/app/modules/home/home_module.dart';
import 'package:todo_list/app/modules/home/task_store.dart';

void main() {
  initModule(HomeModule());
  HomeController home;
  //
  setUp(() {
    home = HomeModule.to.get<HomeController>();
    home.addTask(TaskStore(name: "taks"));
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("Add task", () {
      int length = home.list.length;
      home.addTask(TaskStore(name: "task"));
      expect(home.list.length, equals(length + 1));
      expect(home.list.last.name, equals("task"));
    });

    test("Remove task", () {
      TaskStore task = TaskStore(name: "task");
      home.addTask(task);
      int length = home.list.length;
      home.removeTask(task);
      expect(home.list.length, equals(length - 1));
    });

    test("Change task", () {
      TaskStore task = TaskStore(name: "task");
      home.addTask(task);
      int index = home.list.length - 1;
      home.checkTask(index, true);
      expect(home.list.last.checked, equals(true));
      home.checkTask(index, false);
      expect(home.list.last.checked, equals(false));
    });
  });
}
