import 'package:flutter/material.dart';
import 'package:fluttertodo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:fluttertodo/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';

    return Container(
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Please write task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0,color: Colors.black,),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle=newText;
                print(newTaskTitle);
              },
            ),
            TextButton(onPressed: (){
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
                child: Text(
                  'add',
                  style: TextStyle(color: Colors.black,),
                ),
            )
          ],
        ),
      ),
    );
  }
}
