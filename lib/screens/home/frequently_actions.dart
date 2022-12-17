import 'package:flutter/material.dart';
import 'package:transfermovil/utils/icons_list.dart';

class FrequentlyActions extends StatelessWidget {
  final Color color;

  final List<String> frequently;

  final Future<List<List<dynamic>>> provider;

  const FrequentlyActions({
    super.key,
    required this.provider,
    required this.frequently,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: provider,
      builder:
          (BuildContext context, AsyncSnapshot<List<List<dynamic>>> snapshot) {
        if (snapshot.hasData) {
          try {
            List<Widget> children = [];
            List<List<dynamic>> actions = snapshot.data!;
            for (var id in frequently) {
              int comma = id.indexOf(",");
              int index = int.parse(id.substring(0, comma));
              int action = int.parse(id.substring(comma + 1));
              children.add(
                _createDismissible(
                    IconList.get(actions[index][action]["icon"]),
                    actions[index][action]["name"],
                    actions[index][action]["description"],
                    color),
              );
            }
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(children: children),
            );
          } catch (e) {
            return Container();
          }
        } else {
          return Container();
        }
      },
    );
  }

  Widget _createDismissible(
      Widget? icon, String title, String description, Color color) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:
                  const Icon(Icons.delete_forever_rounded, color: Colors.white),
            ),
            Expanded(child: Container()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:
                  const Icon(Icons.delete_forever_rounded, color: Colors.white),
            ),
          ],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(description),
          leading: CircleAvatar(
            backgroundColor: color,
            foregroundColor: Colors.white,
            child: icon,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
