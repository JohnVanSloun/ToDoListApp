import "package:flutter/material.dart";

class CustomForm extends StatefulWidget {
  final Function func;

  const CustomForm(this.func);

  @override
  _CustomFormState createState() => _CustomFormState(func);
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final Function func;

  _CustomFormState(this.func);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a name";
                  } else {
                    func(value);
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context);
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ));
  }
}
