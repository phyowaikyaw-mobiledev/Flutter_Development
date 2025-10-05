  import 'package:flutter/material.dart';

  class Ex20Singlechildscrollview extends StatelessWidget {
    const Ex20Singlechildscrollview({super.key});

    @override
    Widget build(BuildContext context) {
      final itemList =  List.generate(20, (index)=>
          ListTile(
            title: Text("Hello $index"),
            tileColor: Colors.blue,
          ),
      );

      return Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          scrollDirection:Axis.vertical ,
          padding: EdgeInsets.only(bottom: 5,top: 5),
          reverse:false,
          //physics: BouncingScrollPhysics(), //for ios
          physics: ClampingScrollPhysics(), //for andriod
          child: Column(
                  children: itemList

          
          ),
        )

      );
    }
  }
