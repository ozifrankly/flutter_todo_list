import 'package:mobx/mobx.dart';

import 'task_store.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<TaskStore> list = List<TaskStore>().asObservable();

  @computed
  ObservableList<TaskStore> get checkeds => list.where((e) => e.checked);

  _HomeControllerBase() {
    list.add(TaskStore(name: "Primeira tarefa", checked: true));
    list.add(TaskStore(name: "Segunda tarefa", checked: false));
  }

  @action
  void addTask(TaskStore task) {
    list.add(task);
  }

  @action
  void removeTask(TaskStore task) {
    list.remove(task);
  }

  @action
  void checkTask(int index, bool checked) {
    TaskStore task = list.elementAt(index);
    task.checked = checked;
  }
}
