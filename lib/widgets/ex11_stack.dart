  import 'package:flutter/material.dart';

  class Ex11Stack extends StatelessWidget {
    const Ex11Stack({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Layout(Stack)"),
        ),
       body: Center(
         child: Container(
           width: 300,
           height: 300,
           color: Colors.black,
           child: Stack(
             alignment: Alignment.center,
             fit:StackFit.loose,
             children: [
               Container(
                 width: 250,
                 height: 200,
                 color: Colors.red,
               ), Container(
                 width: 200,
                 height: 150,
                 color: Colors.green,
               ), Container(
                 width: 100,
                 height: 100,
                 color: Colors.blue,
               ),
             ],
           ),
         ),
       ),
      );
    }
  }
  