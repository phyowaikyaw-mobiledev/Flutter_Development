      import 'package:flutter/material.dart';

class Ex44Switch extends StatefulWidget {
  const Ex44Switch({super.key});

  @override
  State<Ex44Switch> createState() => _Ex44SwitchState();
}

class _Ex44SwitchState extends State<Ex44Switch> {

  bool isOpend = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              activeColor: Colors.red,
                // activeTrackColor: Colors.green,
                activeThumbImage: AssetImage('images/billie.jpg'),
                thumbColor: WidgetStatePropertyAll(Colors.blue),
                value: isOpend,
                onChanged: (v){
                  setState(() {
                    isOpend = v;
                  });
                }
                ),
            SwitchListTile(
              title: Text("Title"),
                subtitle: Text("subtitle"),
                value: isOpend,
                onChanged: (v){
                  setState(() {
                    isOpend = v;
                  });
                })
          ],
        ),

      ),
    );
  }
}
