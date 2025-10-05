  import 'package:flutter/material.dart';

  class Ex21Listview extends StatelessWidget {
    const Ex21Listview({super.key});

    @override
    Widget build(BuildContext context) {
      final itemList = List.generate(50,
          (index) => ListTile(
            title: Text("Hello $index"),
          )
      );
      return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: Column(
          children: [
            Container(
              child: Text("Hello World"),
              width: double.infinity,
              height: 200,
              color: Colors.blue,

            ),
            Expanded(
              child: ListView(
                children: itemList,
              ),
            ),
          ],
        ),
      );
    }
  }
//Note : if you use listView under the Column() , you must set the size (SizeBox or Expanded,.)