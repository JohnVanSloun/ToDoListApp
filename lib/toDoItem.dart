import "package:flutter/material.dart";

class ToDoItem extends StatelessWidget {
  final String label;
  final Function func;

  ToDoItem(this.label, this.func);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                label,
                style: TextStyle(fontSize: 32),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => func(label),
                  child: Icon(
                    Icons.check,
                    color: Colors.blue,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.white),
                )
              ],
            )
          ],
        ));
  }
}

/*Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(label, style: TextStyle(fontSize: 32),),
            ElevatedButton(
                onPressed: () => func(label), child: Icon(Icons.check))
          ],*/
