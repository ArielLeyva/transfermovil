import 'package:flutter/material.dart';
import 'package:transfermovil/providers/inherited_app_drawer.dart';
import 'package:transfermovil/screens/services/services.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ServicesScreen> {

  List<String> titles = [
    "Llamadas",
    "Servicios frecuentes",
    "Servicios SMS",
    "Teléfonos útiles",
  ];

  @override
  Widget build(BuildContext context) {
    final drawer = InheritedAppDrawer.of(context)?.drawer;
    final page = InheritedAppDrawer.of(context)?.page;

    return Scaffold(
      drawer: drawer,
      appBar: AppBar(
        title: Text(titles[page == null ? 0 : page - 1]),
      ),
      body: Services(page == null ? 0 : page - 1),
    );
  }
}