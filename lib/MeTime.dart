import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeTimeLayout(),
    );
  }
}

class MeTimeLayout extends StatefulWidget {
  @override
  _TugasLayoutState createState() => _TugasLayoutState();
}

class _TugasLayoutState extends State<MeTimeLayout> {
  List<Task> tasks = [];
  TextEditingController taskController = TextEditingController();

  void addTask() {
    setState(() {
      String newTask = taskController.text;
      if (newTask.isNotEmpty) {
        tasks.add(Task(newTask, false,
            false)); // Menambahkan tugas dengan status favorit awal adalah false
        taskController.clear();
      }
    });
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index].isCompleted = !tasks[index].isCompleted;
    });
  }

  void toggleFavorite(int index) {
    setState(() {
      tasks[index].isFavorite = !tasks[index].isFavorite;
    });
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Me Time"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade900, Colors.blue.shade300],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: tasks[index].isCompleted,
                        onChanged: (value) {
                          toggleTask(index);
                        },
                      ),
                      title: Text(
                        tasks[index].description,
                        style: TextStyle(
                          decoration: tasks[index].isCompleted
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              tasks[index].isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: tasks[index].isFavorite
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            onPressed: () => toggleFavorite(index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => removeTask(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: taskController,
                      decoration: InputDecoration(labelText: "Tambahkan tugas"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: addTask,
                    child: Text("Tambah"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  String description;
  bool isCompleted;
  bool isFavorite;

  Task(this.description, this.isCompleted, this.isFavorite);
}
