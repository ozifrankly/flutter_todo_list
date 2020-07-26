import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_list/app/modules/home/task_store.dart';
import 'package:todo_list/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  TaskStore task;
  //
  setUp(() {
    task = TaskStore(name: "task");
  });

  group('TaskStore Test', () {
    test("First Test", () {
      expect(task, isInstanceOf<TaskStore>());
    });

    test("Default values", () {
      expect(task.name, equals("task"));
      expect(task.checked, equals(false));
    });
  });
}
