  import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

  class Ex31Navigationbar extends StatefulWidget {
    const Ex31Navigationbar({super.key});
  
    @override
    State<Ex31Navigationbar> createState() => _Ex31NavigationbarState();
  }
  
  class _Ex31NavigationbarState extends State<Ex31Navigationbar> {

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
          title: Text("Navigation Bar"),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
            height: 60,
            indicatorColor: Colors.blue,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (index){
            setState(() {
              currentIndex = index;
            });
            },
            destinations: [
             NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
             NavigationDestination(icon: Icon(Icons.notifications), label: 'Notification'),
             NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ]),
        body: pages [currentIndex],
      );
    }
  }
  