import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class TaskModel {
  num id;
  String title;
  String description;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
  });
}

class _AddTaskState extends State<AddTask> {
  String title = '';
  String description = '';

  List<TaskModel> tasks = [
    TaskModel(id: 1, title: "Task 1", description: "Task 1 description")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height - 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                    onChanged: (val) {
                      setState(() {
                        title = val;
                      });
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text('Title')),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  TextField(
                    onChanged: (val) {
                      setState(() {
                        description = val;
                      });
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Description')),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
        
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                tasks.add(TaskModel(
                                    id: tasks.length + 1,
                                    title: title,
                                    description: description));
                              });
                            },
                            child: const Text('Save')),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                'Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
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
                            Text(el.description)
                          ],
                        )),
                        Row(
                          children: [
                            IconButton(onPressed: (){

                            }, icon: const Icon(Icons.edit)),
                            IconButton(onPressed: (){

                            }, icon: const Icon(Icons.delete))
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
