      import 'package:flutter/material.dart';

  class Ex43Checkbox extends StatefulWidget {
    const Ex43Checkbox({super.key});

    @override
    State<Ex43Checkbox> createState() => _Ex43CheckboxState();
  }

  class _Ex43CheckboxState extends State<Ex43Checkbox> {
    bool isChecked = false;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("CheckBox"),
        ),
        body: Column(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (v){
              setState(() {
                isChecked = v!;
              });
            }),
            CheckboxListTile(
              title: Text("Title"),
                subtitle: Text("subtitle"),
                
                value: isChecked, onChanged: (v){
                  setState(() {
                    isChecked = v!;
                  });
            })
          ],
        ),
      );
    }
  }
