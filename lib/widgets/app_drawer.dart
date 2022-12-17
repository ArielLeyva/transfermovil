import 'package:flutter/material.dart';
import 'package:transfermovil/services/routes_providers.dart';
import 'package:transfermovil/utils/icons_list.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer(this.onRouteChanged, {super.key});

  final ValueChanged<int> onRouteChanged;

  final routesProvider = RoutesProvider();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/bg_material_design.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Transfermóvil Etecsa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_rounded),
            title: const Text('Inicio'),
            onTap: () {
              onRouteChanged(0);
            },
          ),
          _addRoutes(),
          ListTile(
            leading: const Icon(Icons.settings_suggest),
            title: const Text('Configuración'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }

  Widget _addRoutes() {
    return FutureBuilder(
      future: routesProvider.load(),
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Column(
          children: _createRoute(snapshot.data),
        );
      },
    );
  }

  List<Widget> _createRoute(List<dynamic>? data) {
    List<Widget> widgets = [];
    for (var route in data!) {
      if (route["collapsed"]) {
        widgets.add(_createExpansionTileWidget(route));
      } else {
        widgets.add(_createRouteContainer(route));
      }
      widgets.add(const Divider());
    }
    return widgets;
  }

  Widget _createRouteContainer(route) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            route["name"],
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Column(
          children: _createListTileWidget(route),
        )
      ],
    );
  }

  Widget _createExpansionTileWidget(route) {
    return ExpansionTile(
      title: Text(
        route["name"],
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
      ),
      children: _createListTileWidget(route),
    );
  }

  List<Widget> _createListTileWidget(route) {
    List<Widget> children = [];
    List<dynamic> routes = route["routes"];
    for (var r in routes) {
      children.add(ListTile(
        title: Text(r["name"]),
        leading: IconList.get(r["icon"]),
        onTap: () {
          onRouteChanged(r["index"]);
        },
      ));
    }
    return children;
  }
}
