import "package:flutter/material.dart";

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
  List<Widget> itemList = [];

  void clearList() {
    setState(() {
      itemList = [];
    });
  }

  void addItem(Widget widget) {
    setState(() {
      itemList.add(widget);
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
              child: ItemList(itemList),
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
