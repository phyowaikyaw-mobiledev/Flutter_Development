      import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

    class Ex48Tabbar extends StatefulWidget {
      const Ex48Tabbar({super.key});

      @override
      State<Ex48Tabbar> createState() => _Ex48TabbarState();
    }

    class _Ex48TabbarState extends State<Ex48Tabbar> {

      int currentIndex = 0;

      @override
      Widget build(BuildContext context) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Tab & TabBar View"),
              bottom: TabBar(
                onTap: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                  tabs: [
                    Tab(text: "Home",icon: Icon(Icons.home),),
                    Tab(text: "Notification",icon: Icon(Icons.notifications),),
                    Tab(text: "Profile",icon: Icon(Icons.person),),
                  ]
              ),
            ),
            body: TabBarView(
                children: [
                  HomeScreen(),
                  NotificationScreen(),
                  ProfileScreen()
                ]
            ),
          ),
        );
      }
    }
