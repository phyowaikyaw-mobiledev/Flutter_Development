  import 'package:flutter/material.dart';

  class Ex18Listtile extends StatelessWidget {
    const Ex18Listtile({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ListTile"),
        ),
        body: Column(
          children: [
            ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        
                      ),
                        child: Text("F"),
                    ),
                    title: Text("Andrew"),
                    subtitle: Text("andrewtechstudio@gmail.com"),
                    trailing: Icon(Icons.delete),
                   tileColor: Colors.grey,
                   // isThreeLine: true,   => It is for Lines control
                  // dense : true;  => It is for size of text
              onTap: () {
                print("Clicked");
              },


            ),
          ],
        )
      );
    }
  }
