import "package:flutter/material.dart";

import "./form.dart";

class ListButton extends StatelessWidget {
  final Icon icon;
  final bool add;
  final Function func;

  ListButton(this.icon, this.add, this.func);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Expanded(
        child: ElevatedButton(
          onPressed: () => (add)
              ? {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: CustomForm(func),
                        );
                      })
                }
              : {func()},
          child: icon,
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(), primary: Colors.white),
        ),
      ),
    );
  }
}
