    import 'package:flutter/material.dart';
import 'package:flutter_dev_collection/sample_screen/home_screen.dart';
import 'package:flutter_dev_collection/sample_screen/notification_screen.dart';
import 'package:flutter_dev_collection/sample_screen/profile_screen.dart';

  class Ex32Navigationrail extends StatefulWidget {
    const Ex32Navigationrail({super.key});

    @override
    State<Ex32Navigationrail> createState() => _Ex32NavigationrailState();
  }

  class _Ex32NavigationrailState extends State<Ex32Navigationrail> {
    int currentIndex = 0 ;
    final pages = [
      HomeScreen(),
      NotificationScreen(),
      ProfileScreen(),
    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Navigation Rail"),
        ),
        body: Row(
          children: [
            NavigationRail(

              selectedIndex:currentIndex,
                onDestinationSelected: (index){
                setState(() {
                  currentIndex = index;
                });
                },
              extended: false,
              leading: Text("Title"),
              trailing: Text("Items"),
                destinations: [
                  NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.notifications),
                      label: Text("Notification")),
                  NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text("Profile")),
                ],),
            Expanded(
                child: pages [currentIndex]),
          ],
        )
        ,
      );
    }
  }
