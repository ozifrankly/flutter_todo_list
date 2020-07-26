import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/app/shared/corlors.dart';
import 'home_controller.dart';
import 'task_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage(String s, {Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  _showTaskDialog(BuildContext context) async {
    var task = TaskStore(name: "");

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(widget.title),
          content: TextField(
            onChanged: (value) {
              task.name = value;
            },
            decoration: InputDecoration(hintText: "Tarefa"),
          ),
          actions: <Widget>[
            FlatButton(
                color: BACKGROUND_COLOR,
                onPressed: () {
                  Modular.to.pop();
                },
                child: Text("Cancelar")),
            FlatButton(
                color: BACKGROUND_COLOR,
                onPressed: () {
                  controller.addTask(task);
                  Modular.to.pop();
                },
                child: Text("Adicionar"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
        backgroundColor: BACKGROUND_COLOR,
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (_, index) {
              TaskStore task = controller.list[index];
              return ListTile(
                title: Text(task.name),
                trailing: Observer(builder: (_) {
                  return Checkbox(
                      value: task.checked,
                      onChanged: (checked) {
                        controller.checkTask(index, checked);
                      });
                }),
              );
            });
      }),
      floatingActionButton: Container(
        decoration: const ShapeDecoration(
            shape: CircleBorder(), color: BACKGROUND_COLOR),
        child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {
              _showTaskDialog(context);
            }),
      ),
    );
  }
}
