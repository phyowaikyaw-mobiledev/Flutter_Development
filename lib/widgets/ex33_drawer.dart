    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

      class Ex33Drawer extends StatefulWidget {
        const Ex33Drawer({super.key});

  @override
  State<Ex33Drawer> createState() => _Ex33DrawerState();
}

class _Ex33DrawerState extends State<Ex33Drawer> {
  int currentIndex = 0;
  final pages = [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Drawer"),
              centerTitle: true,
            ),
            drawerScrimColor: Colors.blue,
            drawer: Drawer(
           child: Column(
             children: [
               DrawerHeader(
                   child: ListTile(
                     leading: CircleAvatar(
                       child: Icon(Icons.person),
                     ),
                     title: Text("Andrew"),
                   )),
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text("Home"),
                 onTap: (){
                  setState(() {
                    currentIndex = 0;
                    Navigator.of(context).pop(); // To exit from drawer when you change the screen

                  });
                 },
               ),
               ListTile(
                 leading: Icon(Icons.notifications),
                 title: Text("Notification"),
                 onTap: (){
                   setState(() {
                     currentIndex =1;
                     Navigator.of(context).pop(); // To exit from drawer when you change the screen
                   });
                 },
               ),
               ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Profile"),
                 onTap: (){
                   setState(() {
                     currentIndex = 2;
                     Navigator.of(context).pop(); // To exit from drawer when you change the screen
                   });
                 },
               ),
             ],
           ),
            ),
            body: pages[currentIndex],
          );
        }
}
