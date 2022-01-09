import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodo/models/task_data.dart';
import 'package:fluttertodo/widgets/tasks_list.dart';
import 'package:fluttertodo/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, isScrollControlled: true,
              builder: (context) => AddTaskScreen());
        },
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0,left:30.0,right:30.0,bottom: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              'MyTodo',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 12.0
                 )
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
                'There are ${Provider.of<TaskData>(context).taskCount} tasks',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0
                )
            ),
            Expanded(
              child: TasksList(),

            )
          ],
        ),
      ),
    );
  }
}


