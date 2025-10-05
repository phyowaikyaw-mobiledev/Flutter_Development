import 'package:flutter/material.dart';

class Ex2Text extends StatelessWidget {
  const Ex2Text({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),),
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text("New Journey in Thailand",
            style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,),
          actions: [
            Icon(Icons.notification_add_outlined),
            SizedBox(width: 30,)
          ],
        ),
        body: Center(
            child: Text(
              'Hello World'* 3,
              style: TextStyle(
                fontSize:32,color: Colors.blueAccent,
                backgroundColor: Colors.black12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 4,
                height: 2.5,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
        ),
      ),
    );

  }
}
