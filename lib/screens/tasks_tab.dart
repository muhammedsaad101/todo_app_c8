
import 'package:flutter/material.dart';
import 'package:todo_app_c8/screens/widgets/task_item.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TasksTab extends StatefulWidget {
  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).primaryColor,
          height: 100,
          selectedTextColor: Colors.white,
          onDateChange: (newDate) {
            // New date selected
            setState(() {
              date = newDate;
            });
          },
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) => TaskItem(),itemCount: 10,)),
      ],
    );
  }
}
