import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onIndexChanged;
  const MyBottomBar({Key? key, required this.index, required this.onIndexChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
        onTap: onIndexChanged,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Person"),
        ]
    );
  }
}
