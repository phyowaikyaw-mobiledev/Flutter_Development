  import 'package:flutter/material.dart';

  class Ex19Circleavatar extends StatelessWidget {
    const Ex19Circleavatar({super.key});
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Circle Avatar"),
        ),
            body: Column(
              children: [
                ListTile(
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage("images/dev.jpg"),
                        backgroundColor: Colors.red,
                          foregroundImage: AssetImage("images/dev.jpg"),
                          child: Text("A")),
                    title: Text("Andrew"),
                  subtitle: Text("andrewtechstudio@gmail.com"),
                  trailing: Icon(Icons.mail_outline),

                  tileColor: Colors.yellow,

                      ),
                SizedBox(height: 2,),
                ListTile(
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("images/billie.jpg"),
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("images/billie.jpg"),
                      child: Text("A")),
                  title: Text("Billie"),
                  subtitle: Text("billieellish.popstar@gmail.com"),
                  trailing: Icon(Icons.mail_outline),

                  tileColor: Colors.yellow,

                ),
                SizedBox(height: 2,),
                ListTile(
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("images/dev.jpg"),
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("images/dev.jpg"),
                      child: Text("A")),
                  title: Text("Andrew"),
                  subtitle: Text("andrewtechstudio@gmail.com"),
                  trailing: Icon(Icons.mail_outline),

                  tileColor: Colors.yellow,

                ),
                SizedBox(height: 2,),
                ListTile(
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("images/billie.jpg"),
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("images/billie.jpg"),
                      child: Text("A")),
                  title: Text("Billie"),
                  subtitle: Text("billieellish.popstar@gmail.com"),
                  trailing: Icon(Icons.mail_outline),

                  tileColor: Colors.yellow,

                ),
              ],
            ),
      );
    }
  }
  