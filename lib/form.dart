import "package:flutter/material.dart";

class customForm extends StatefulWidget {
  final Function func;

  const customForm(this.func);

  @override
  _customFormState createState() => _customFormState(func);
}

class _customFormState extends State<customForm> {
  final _formKey = GlobalKey<FormState>();
  final Function func;

  _customFormState(this.func);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a name";
              } else {
                func(
                  Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(value, style: TextStyle(fontSize: 32)),
                        ],
                      )),
                );
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Item Created")));
              }
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
