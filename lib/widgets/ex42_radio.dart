    import 'package:flutter/material.dart';

  class Ex42Radio extends StatefulWidget {
    const Ex42Radio({super.key});

    @override
    State<Ex42Radio> createState() => _Ex42RadioState();
  }

  class _Ex42RadioState extends State<Ex42Radio> {
    String selectedValue = 'valueOne';

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Radio"),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(value: 'valueOne', groupValue: selectedValue, onChanged: (v){
                      setState(() {
                        selectedValue =  v!;
                        debugPrint(selectedValue);
                      });
                  }),
                  Text("Value One")
                ],
              ),
              Row(
                children: [
                  Radio(value: 'valueTwo', groupValue: selectedValue, onChanged: (v){
                    setState(() {
                      selectedValue =  v!;
                      debugPrint(selectedValue);
                    });
                  }),
                  Text("Value Two")
                ],
              ),
              RadioListTile(value: 'valueOne',
                  groupValue: selectedValue,
                  title: Text("Value One"),
                  subtitle: Text("subtitle"),
                  onChanged: (v){
                setState(() {
                  selectedValue = v!;
                });
                  })
            ],
          ),
        ),
      );
    }
  }
