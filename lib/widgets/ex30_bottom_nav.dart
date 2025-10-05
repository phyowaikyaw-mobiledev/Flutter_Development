    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

    class Ex30BottomNav extends StatefulWidget {
      const Ex30BottomNav({super.key});

      @override
      State<Ex30BottomNav> createState() => _Ex30BottomNavState();
    }

    class _Ex30BottomNavState extends State<Ex30BottomNav> {
      
      int  currentIndex = 0;

      final pages = [
        HomeScreen(),
        NotificationScreen(),
        ProfileScreen()
      ];
      
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Bottom Navigation"),
          ),
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blueAccent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            currentIndex: currentIndex,

              onTap: (index){
               setState(() {
                 currentIndex = index;
                 print("currentIndex $currentIndex");
               });

              },
              items: [BottomNavigationBarItem(
                label: 'Home',
                  icon: Icon(Icons.home)
              ),
                BottomNavigationBarItem(
                    label: 'Notification',
                    icon: Icon(Icons.notifications)
                ),
                BottomNavigationBarItem(
                    label: 'Profile',
                    icon: Icon(Icons.person)
                ),


              ]
          ),
        );
      }
    }
