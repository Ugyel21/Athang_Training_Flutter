import 'package:day_5/screens/tasks/AddTask.dart';
import 'package:flutter/material.dart';

class ToDohome extends StatefulWidget {
  const ToDohome({super.key});

  @override
  State<ToDohome> createState() => _ToDohomeState();
}

class TaskModel {
  final num id;
  final String title;
  final String description;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
  });
}

class _ToDohomeState extends State<ToDohome> {
  List<TaskModel> tasks = [
    TaskModel(id: 1, title: "Task 1", description: "Task 1 description"),
    TaskModel(id: 2, title: "Task 2", description: "Task 2 description"),
    TaskModel(id: 3, title: "Task 3", description: "Task 3 description"),
    TaskModel(id: 4, title: "Task 4", description: "Task 4 description"),
    TaskModel(id: 5, title: "Task 5", description: "Task 5 description"),
    TaskModel(id: 6, title: "Task 6", description: "Task 6 description"),
    TaskModel(id: 7, title: "Task 7", description: "Task 7 description"),
  ];

  void _addNewTask(TaskModel newTask) {
    setState(() {
      tasks.add(TaskModel(
        id: tasks.length + 1, // Incremental ID for simplicity
        title: newTask.title,
        description: newTask.description,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: tasks.map((el) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12, top: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            el.title,
                            style: const TextStyle(fontSize: 24),
                          ),
                          Text(el.description),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) => Container(
                                      child: Container(
                                        padding: const EdgeInsets.all(24),
                                        width: double.infinity,
                                        height: 200,
                                        child: Column(
                                          children: [
                                            const Text(
                                                'Are you sure you want to delete this?'),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 24),
                                              height: 48,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.red,
                                                          foregroundColor:
                                                              Colors.white),
                                                  onPressed: () {
                                                    List<TaskModel> tempTask =
                                                        tasks
                                                            .where((task) =>
                                                                task.id !=
                                                                el.id)
                                                            .toList();
                                                    setState(() {
                                                      tasks = tempTask;
                                                    });
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Confirm')),
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTask()),
          );

          if (newTask != null) {
            _addNewTask(TaskModel(
              id: tasks.length + 1,
              title: newTask.title,
              description: newTask.description,
            ));
          }
        },
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
