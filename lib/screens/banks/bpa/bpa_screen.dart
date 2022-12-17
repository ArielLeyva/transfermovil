import 'package:flutter/material.dart';
import 'package:transfermovil/screens/banks/bank_mixin.dart';
import 'package:transfermovil/services/bank_providers.dart';

class BpaScreen extends StatelessWidget with BankMixin {
  BpaScreen(this.window, {Key? key}) : super(key: key);

  final int window;

  final bankProvider = BankProvider("assets/bpa_windows.json");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: bankProvider.load(),
      initialData: const [[]],
      builder:
          (BuildContext context, AsyncSnapshot<List<List<dynamic>>> snapshot) {
        List<dynamic> actions = snapshot.data![window];
        return CustomScrollView(
          slivers: <Widget>[
            createSilverAppBar(
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.login_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.logout_rounded),
                ),
              ],
              title: "BPA",
              image: "assets/bpa_banner.jpg",
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return createAction(
                    name: actions[index]["name"],
                    description: actions[index]["description"],
                    icon: actions[index]["icon"],
                  );
                },
                childCount: actions.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
