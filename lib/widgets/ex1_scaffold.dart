import 'package:flutter/material.dart';


class Ex1Scaffold extends StatelessWidget {
  const Ex1Scaffold({super.key});

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
        body: Text('Hello World')
      ),
    );

  }
}
