    import 'package:flutter/material.dart';

      class Ex49Pageview extends StatefulWidget {
        const Ex49Pageview({super.key});

        @override
        State<Ex49Pageview> createState() => _Ex49PageviewState();
      }

      class _Ex49PageviewState extends State<Ex49Pageview> {

        int currentIndex =  0 ;

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Page View"),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    onPageChanged: (index){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    children: [
                      Container(
                        color: Colors.red,

                      ),
                      Container(
                        color: Colors.green,

                      ),
                      Container(
                        color: Colors.blue,

                      ),
                    ],
                  ),
                ),
                SizedBox(height:8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor:currentIndex == 0? Colors.red : Colors.grey,
                      radius: 8,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor:currentIndex == 1?  Colors.red : Colors.grey,
                      radius: 8,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor: currentIndex == 2? Colors.red : Colors.grey,
                      radius: 8,
                    ),
                  ],
                )

              ],
            ),

          );
        }
      }
