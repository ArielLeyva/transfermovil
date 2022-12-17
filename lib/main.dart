import 'package:flutter/material.dart';
import 'package:transfermovil/providers/inherited_app_drawer.dart';
import 'package:transfermovil/screens/banks/bank_screen.dart';
import 'package:transfermovil/screens/home/home_screen.dart';
import 'package:transfermovil/screens/services/services_screen.dart';
import 'package:transfermovil/services/bank_providers.dart';
import 'package:transfermovil/widgets/app_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transfermóvil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Future<List<List<dynamic>>>> _providers = [
    BankProvider("assets/bpa_windows.json").load(),
    BankProvider("assets/bm_windows.json").load(),
    BankProvider("assets/bandec_windows.json").load(),
  ];

  int _page = 0;

  @override
  Widget build(BuildContext context) {
    AppDrawer drawer = AppDrawer((int route) {
      setState(() {
        _page = route;
      });
    });
    Widget child = Container();
    switch (_page) {
      case 0:
        child = const HomeScreen();
        break;
      case 1:
      case 2:
      case 3:
      case 4:
        child = const ServicesScreen();
        break;
      case 6:
      case 7:
      case 8:
        child = const BankScreen();
        break;
    }
    return InheritedAppDrawer(
      drawer: drawer,
      page: _page,
      providers: _providers,
      child: child,
    );
  }
}
