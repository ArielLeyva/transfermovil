import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar(this.currentIndex, this.onItemTapped, {Key? key})
      : super(key: key);

  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  createNavigationBar(List<BottomNavigationBarItem> items) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        onItemTapped(index);
      },
    );
  }
}
