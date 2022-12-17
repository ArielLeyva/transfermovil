import 'package:flutter/material.dart';
import 'package:transfermovil/widgets/navigation_bar/app_bottom_navigation_bar.dart';

class BandecNavigationBar extends AppBottomNavigationBar {
  const BandecNavigationBar(currentIndex, onItemTapped, {Key? key})
      : super(currentIndex, onItemTapped, key: key);

  final List<BottomNavigationBarItem> _items = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.info_rounded),
      label: 'Consultas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.credit_card_rounded),
      label: 'Operaciones',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_rounded),
      label: 'Servicios',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings_rounded),
      label: 'Configuración',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return createNavigationBar(_items);
  }
}
