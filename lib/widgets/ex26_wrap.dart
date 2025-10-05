      import 'package:flutter/material.dart';

  class Ex26Wrap extends StatelessWidget {
    const Ex26Wrap({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Wrap"),
          centerTitle: true,
        ),
        body: Center(
          child: Wrap(
            spacing: 8,
            runSpacing: 16,// top to bottom spacing
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),),
              ElevatedButton(onPressed: (){}, child: Text("Click"),)

            ],
          ),
        ),
      );
    }
  }
