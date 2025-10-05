    import 'package:flutter/material.dart';

  class Ex23GridviewGridviewbuilder extends StatelessWidget {
    const Ex23GridviewGridviewbuilder({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("GridView and GridViewBuilder"),
        ),
        body:GridView.builder(
          itemCount: 20,

            itemBuilder: (BuildContext context, int index) => Card(child: Text("Hello"),),



          gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20


        )
        // SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //   crossAxisSpacing: 16,
        //   mainAxisSpacing: 25,
        //   childAspectRatio: 3/4

        // children: [
        //   Card(
        //     child: Text("Hello"),
        //   ),
        //   Card(
        //     child: Text("Hello"),
        //   ),
        //   Card(
        //     child: Text("Hello"),
        //   )
        //
        //
        // ],
        ) ,

      );
    }
  }
