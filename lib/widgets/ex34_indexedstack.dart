      import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

    class Ex34Indexedstack extends StatefulWidget {
      const Ex34Indexedstack({super.key});

      @override
      State<Ex34Indexedstack> createState() => _Ex34IndexedstackState();
    }

    class _Ex34IndexedstackState extends State<Ex34Indexedstack> {
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
            title: Text("IndexedStack"),
          ),
          body: IndexedStack(
            index: currentIndex,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey,
            currentIndex: currentIndex,
              onTap: (index){
              setState(() {
                currentIndex = index;
              });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),

              ]),
        );
      }
    }
