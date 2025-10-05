  import 'package:flutter/material.dart';

  class Ex15Dividers extends StatelessWidget {
    const Ex15Dividers({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Dividers"),
        ),
        body: Column(
          children: [
            Text("Hello"),
            Divider(
              height: 4,
              thickness: 4,
              indent: 30,
              endIndent: 30,
              color: Colors.blue,
            ),
            Text("Hello"),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  Text("Hello"),
                  VerticalDivider( width: 4,
                    thickness: 4,
                    indent: 30,
                    endIndent: 30,
                    color: Colors.blue,),
                  Text("Hello")

                ],
              ),
            )
          ],
        ),

      );
    }
  }
