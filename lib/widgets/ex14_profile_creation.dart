import 'package:flutter/material.dart';

class Ex14ProfileCreation extends StatelessWidget {
  const Ex14ProfileCreation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          // Expanded main content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Top profile section
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -50,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage('images/billie.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 5,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueAccent,
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 55),
                  Text(
                    "Billie Ellish",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pop Singer",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  // Stats cards
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildInfoCard(
                            icon: Icons.youtube_searched_for,
                            title: "Search",
                            subtitle: "Hit songs"),
                        SizedBox(width: 10),
                        buildInfoCard(
                            icon: Icons.star,
                            title: "Rating",
                            subtitle: "Top Fans"),
                        SizedBox(width: 10),
                        buildInfoCard(
                            icon: Icons.rss_feed,
                            title: "New",
                            subtitle: "followers"),
                      ],
                    ),
                  ),

                  // Notifications + Settings + Support + Privacy
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        NotificationTile(
                            title: "Notification",
                            leadingIcon: Icons.notifications),
                        SizedBox(height: 30),
                        NotificationTile(
                            title: "Settings", leadingIcon: Icons.settings),
                        SizedBox(height: 30),
                        NotificationTile(
                            title: "Support Service",
                            leadingIcon: Icons.support_agent),
                        SizedBox(height: 30),
                        NotificationTile(
                            title: "Privacy & Policy",
                            leadingIcon: Icons.privacy_tip),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Fixed Sign Out button at bottom
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.blueAccent,
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              "Sign Out",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  // Small helper widget for top info cards
  Card buildInfoCard(
      {required IconData icon,
        required String title,
        required String subtitle}) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Icon(icon, size: 35, color: Colors.blueAccent),
            SizedBox(height: 5),
            Text(title,
                style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
            SizedBox(height: 5),
            Text(subtitle,
                style: TextStyle(fontSize: 13, color: Colors.grey),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// Reusable notification row widget
class NotificationTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;

  const NotificationTile({
    required this.title,
    required this.leadingIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 15),
          child: Icon(leadingIcon, color: Colors.white, size: 30),
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        Icon(Icons.arrow_forward_ios, color: Colors.grey),
      ],
    );
  }
}
