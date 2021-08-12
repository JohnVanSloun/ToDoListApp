import "package:flutter/material.dart";

class ItemList extends StatefulWidget {
  Map<String, Widget> items;
  ItemList(this.items);

  @override
  _ItemListState createState() => _ItemListState(items);
}

class _ItemListState extends State<ItemList> {
  Map<String, Widget> items;

  _ItemListState(this.items);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[...items.values],
      ),
    );
  }
}
