import "package:flutter/material.dart";
import 'package:to_do_list/toDoItem.dart';

import "./itemList.dart";
import "./listButton.dart";

void main() {
  runApp(ToDoList());
}

class ToDoList extends StatefulWidget {
  const ToDoList();

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final Map<String, Widget> items = {};

  void deleteItem(String label) {
    setState(() {
      items.remove(label);
    });
  }

  void addItem(String text) {
    setState(() {
      items[text] = ToDoItem(text, deleteItem);
    });
  }

  void clearList() {
    setState(() {
      for (int i = 0; i < items.length; i++) {
        items.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do List"),
        ),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: ItemList(items),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListButton(
                    Icon(
                      Icons.delete,
                      color: Colors.blue,
                    ),
                    false,
                    clearList,
                  ),
                  ListButton(
                    Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                    true,
                    addItem,
                  )
                ],
              ),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
