import "package:flutter/material.dart";

class ItemList extends StatelessWidget {
  final List<Widget> items;

  ItemList(this.items);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[...items],
      ),
    );
  }
}
