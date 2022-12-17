import 'package:flutter/material.dart';
import 'package:transfermovil/utils/icons_list.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar(this.currentIndex, this.onItemTapped, {Key? key})
      : super(key: key);

  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: IconList.get("bpa_icon")!,
          label: "BPA",
        ),
        BottomNavigationBarItem(
          icon: IconList.get("metropolitano_icon")!,
          label: "Metropolitano",
        ),
        BottomNavigationBarItem(
          icon: IconList.get("bandec_icon")!,
          label: "BANDEC",
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        onItemTapped(index);
      },
    );
  }
}
