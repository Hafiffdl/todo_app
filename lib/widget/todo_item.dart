import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget{
  final ToDo todo;
  // ignore: prefer_typing_uninitialized_variables
  final onToDoChanged;
  // ignore: prefer_typing_uninitialized_variables
  final onDeleteTime;
  
  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteTime,
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('Clicked on todo item.')
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.teal
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          // ignore: prefer_const_constructors
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            // ignore: prefer_const_constructors
            icon: Icon(Icons.delete),
            onPressed: () {
              // print('Clicked on delete icon');
              onDeleteTime(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
