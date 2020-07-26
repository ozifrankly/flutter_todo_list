import 'package:mobx/mobx.dart';

part 'task_store.g.dart';

class TaskStore extends _TaskStoreBase with _$TaskStore {
  TaskStore({String name, bool checked = false})
      : super(name: name, checked: checked);
}

abstract class _TaskStoreBase with Store {
  @observable
  String name;

  @observable
  bool checked;

  _TaskStoreBase({this.name, this.checked = false});
}
