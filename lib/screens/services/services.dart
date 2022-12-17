import 'package:flutter/material.dart';
import 'package:transfermovil/services/services_provider.dart';
import 'package:transfermovil/utils/icons_list.dart';

class Services extends StatelessWidget {
  Services(this.index, {Key? key}) : super(key: key);

  final servicesProvider = ServicesProvider();

  final int index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: servicesProvider.load(),
      initialData: const [[]],
      builder:
          (BuildContext context, AsyncSnapshot<List<List<dynamic>>> snapshot) {
        List<dynamic> actions = snapshot.data![index];
        List<Widget> children = [];
        for (var action in actions) {
          children.add(Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            child: ListTile(
              title: Text(
                action["name"],
                style: const TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(action["description"]),
              leading: IconList.get(action["icon"]),
              onTap: () {},
            ),
          ));
        }
        return ListView(
          padding: const EdgeInsets.all(10.0),
          children: children,
        );
      },
    );
  }
}
