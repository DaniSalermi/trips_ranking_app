import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app/home_trips.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: Colors.white.withAlpha(120),
            activeColor: Color(0xFF584CD1),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return CupertinoTabView(
                    builder: (BuildContext context) => HomeTrips());
                break;
              case 1:
                return CupertinoTabView(
                    builder: (BuildContext context) => SearchTrips());
                break;
              case 2:
                return CupertinoTabView(
                    builder: (BuildContext context) => ProfileTrips());
                break;
            }
          }),
    );
  }
}
