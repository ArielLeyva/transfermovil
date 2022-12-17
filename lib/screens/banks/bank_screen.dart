import 'package:flutter/material.dart';
import 'package:transfermovil/providers/inherited_app_drawer.dart';
import 'package:transfermovil/screens/banks/bandec/bandec_screen.dart';
import 'package:transfermovil/screens/banks/bm/bm_screen.dart';
import 'package:transfermovil/screens/banks/bpa/bpa_screen.dart';
import 'package:transfermovil/widgets/navigation_bar/bandec_navigation_bar.dart';
import 'package:transfermovil/widgets/navigation_bar/bm_navigation_bar.dart';
import 'package:transfermovil/widgets/navigation_bar/bpa_navigation_bar.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  State<BankScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BankScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final drawer = InheritedAppDrawer.of(context)?.drawer;
    final page = InheritedAppDrawer.of(context)?.page;

    switch (page) {
      case 6:
        return Scaffold(
          drawer: drawer,
          body: BpaScreen(_selectedIndex),
          bottomNavigationBar: BpaNavigationBar(_selectedIndex, (index) {
            _onItemTapped(index);
          }),
        );
      case 7:
        return Scaffold(
          drawer: drawer,
          body: BandecScreen(_selectedIndex),
          bottomNavigationBar: BandecNavigationBar(_selectedIndex, (index) {
            _onItemTapped(index);
          }),
        );
      case 8:
        return Scaffold(
          drawer: drawer,
          body: BmScreen(_selectedIndex),
          bottomNavigationBar: BmNavigationBar(_selectedIndex, (index) {
            _onItemTapped(index);
          }),
        );
      default:
        return Scaffold(
          drawer: drawer,
          body: Container(),
        );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
