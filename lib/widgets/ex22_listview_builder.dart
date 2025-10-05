      import 'package:flutter/material.dart';

      class Ex22ListviewBuilder extends StatelessWidget {
        const Ex22ListviewBuilder({super.key});

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("ListView Builder"),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                    height: 200,
                    color: Colors.red,
                    child: Text("Hello World")
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 500,
                      itemBuilder: (context , index)=>
                          ItemText(text: index.toString()) ),
                )
              ],
            ),

          );
        }
      }

        class ItemText extends StatelessWidget {
          const ItemText({super.key, required this.text});
          final String text;

          @override
          Widget build(BuildContext context) {
            return Text("index $text");
          }
        }















































// class Ex22ListviewBuilder extends StatelessWidget {
      //   const Ex22ListviewBuilder({super.key});

      //   @override
      //   Widget build(BuildContext context) {
      //     return Scaffold(
      //       appBar: AppBar(
      //         title: Text("ListView Builder"),
      //         centerTitle: true,
      //       ),
      //       body: Column(
      //         children: [
      //           Container(
      //            width: double.infinity,
      //               height: 200,
      //               color: Colors.blue,
      //               child: Center(child: Text("Hello World")),
      //           ),
      //           Expanded(
      //             child: ListView.builder(
      //               itemCount: 5000,
      //                 itemBuilder: (context , index) => ItemText(text: index.toString())
      //             ),
      //           )
      //         ],
      //       ),
      //     );
      //   }
      // }
      //
      //  class ItemText extends StatelessWidget {
      //    const ItemText({super.key, required this.text});
      //    final String text;
      //
      //    @override
      //    Widget build(BuildContext context) {
      //      return Text("index $text");
      //    }
      //  }
      //
